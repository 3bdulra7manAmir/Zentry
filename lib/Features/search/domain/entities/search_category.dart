// Model class for search category
class SearchCategory {
  final int id;
  final String image;
  final String title;
  final String? number;

  const SearchCategory({
    required this.id,
    required this.image,
    required this.title,
    required this.number,
  });

  factory SearchCategory.fromJson(Map<String, dynamic> json) {
    return SearchCategory(
      id: json['id'] as int,
      image: json['image'] as String, 
      title: json['title'] as String,
      number: json['number'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'title': title,
      'number': number,
    };
  }
}
