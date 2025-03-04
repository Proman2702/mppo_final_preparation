class Item {
  final int? id;
  final String text;

  Item({this.id, required this.text});

  Map<String, dynamic> toMap() {
    return {'id': id, 'text': text};
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      text: map['text'],
    );
  }
}
