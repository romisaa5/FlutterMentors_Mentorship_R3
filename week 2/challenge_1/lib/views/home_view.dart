import 'package:challenge_1/models/note_model.dart';
import 'package:challenge_1/utils/sqflite_db.dart';
import 'package:challenge_1/widgets/show_add_task_bottom_sheet.dart';
import 'package:challenge_1/widgets/tasker_card.dart';
import 'package:challenge_1/widgets/tasker_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final SqfliteDb sqfliteDb = SqfliteDb();
  List<Note> notes = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadNotes();
  }

  Future<void> loadNotes() async {
    final data = await sqfliteDb.getNotes();
    setState(() {
      notes = data;
      loading = false;
    });
  }

  void refreshTasks() => loadNotes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () async {
          await showAddTaskBottomSheet(context, sqfliteDb);
          refreshTasks();
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          TaskerHeader(),
          Expanded(
            child: loading
                ? Center(child: CircularProgressIndicator())
                : notes.isEmpty
                ? Center(child: Text('No tasks available.'))
                : ReorderableListView.builder(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    itemCount: notes.length,
                    onReorder: (oldIndex, newIndex) {
                      setState(() {
                        if (newIndex > oldIndex) newIndex -= 1;
                        final item = notes.removeAt(oldIndex);
                        notes.insert(newIndex, item);
                      });
                    },
                    itemBuilder: (context, index) {
                      final note = notes[index];
                      return ReorderableDragStartListener(
                        key: ValueKey(note.id),
                        index: index,
                        child: TaskerCard(
                          note: notes[index],
                          onDelete: (note) async {
                            int response = await sqfliteDb.deleteNote(note.id!);
                            if (response > 0) refreshTasks();
                          },
                          onUndo: (note) async {
                            await sqfliteDb.insertNote(note);
                            refreshTasks();
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
