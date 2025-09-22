class Note {
  final int? id;
  final String note;
  final String date;

  Note({
    this.id,
    required this.note,
    required this.date,
  });

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      note: map['note'],
      date: map['date'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'note': note,
      'date': date,
    };
  }
}