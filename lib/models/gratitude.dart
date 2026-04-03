class Gratitude {
  final String id;
  final String text;
  final DateTime date;

  Gratitude({required this.id, required this.text, required this.date});

  Map<String, dynamic> toMap() {
    return {'id': id, 'text': text, 'date': date.toIso8601String()};
  }

  factory Gratitude.fromMap(Map<String, dynamic> map) {
    return Gratitude(
      id: map['id'] ?? '',
      text: map['text'] ?? '',
      date: DateTime.parse(map['date'] ?? DateTime.now().toIso8601String()),
    );
  }
}
