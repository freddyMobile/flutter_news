class CaroselModel {
  final String body;
  final String category;
  final String date;
  final String description;
  final int id;
  final String imageUrl;
  final String title;
  final int viewCount;

  CaroselModel(
      {required this.body,
      required this.category,
      required this.date,
      required this.description,
      required this.id,
      required this.imageUrl,
      required this.title,
      required this.viewCount});

  static CaroselModel fromJson(Map<String, dynamic> json) => CaroselModel(
      body: json['body'],
      category: json['category'],
      date: json['date'],
      description: json['description'],
      id: json['id'],
      imageUrl: json['imageUrl'],
      title: json['title'],
      viewCount: json['viewCount']);
}
