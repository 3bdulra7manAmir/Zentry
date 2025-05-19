class SearchResult {
  final int id;
  final String car;
  final String price;
  final String title;
  final String ratingMin;
  final String ratingMax;
  final String year;
  final String status;
  final List<String> subimages;
  final String country;
  final String month;

  const SearchResult({
    required this.id,
    required this.car,
    required this.price,
    required this.title,
    required this.ratingMin,
    required this.ratingMax,
    required this.year,
    required this.status,
    required this.subimages,
    required this.country,
    required this.month,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      id: json['id'] as int,
      car: json['car'] as String,
      price: json['price'] as String,
      title: json['title'] as String,
      ratingMin: json['rating min'] as String,
      ratingMax: json['rating max'] as String,
      year: json['year'] as String,
      status: json['status'] as String,
      subimages: (json['subimages'] as List).cast<String>(),
      country: json['country'] as String,
      month: json['month'] as String,
    );
  }
}
