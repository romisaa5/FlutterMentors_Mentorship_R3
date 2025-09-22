import 'package:challenge_1/models/note_model.dart';
import 'package:challenge_1/widgets/custom_check_is_done.dart';
import 'package:challenge_1/widgets/custom_dialogs.dart';
import 'package:challenge_1/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';

class TaskerCard extends StatelessWidget {
  const TaskerCard({
    super.key,
    required this.note,
    required this.onDelete,
    required this.onUndo,
  });

  final Note note;
  final Future<void> Function(Note note) onDelete;
  final Future<void> Function(Note note) onUndo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(
        key: ValueKey(note.id),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.delete, color: Colors.white),
        ),
        confirmDismiss: (direction) async {
          return await CustomDialogs.showConfirmDeleteDialog(context);
        },
        onDismissed: (direction) async {
          final deletedNote = note;
          await onDelete(note);

          CustomSnackBar.show(
            context,
            "Task deleted",
            icon: Icons.delete,
            backgroundColor: Colors.red,
            actionLabel: "Undo",
            onAction: () async {
              await onUndo(deletedNote);
            },
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: const CustomCheckIsDone(),
            title: Text(
              note.note,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(note.date.split(' ')[0]),
          ),
        ),
      ),
    );
  }
}
