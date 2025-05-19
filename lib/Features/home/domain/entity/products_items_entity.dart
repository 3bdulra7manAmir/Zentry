class ProductsItemsEntity
{
  final String? id;
  final String? title;
  final String? image;
  final String? backgroundColor;

  ProductsItemsEntity({
    this.id,
    this.title,
    this.image,
    this.backgroundColor,
  });

  factory ProductsItemsEntity.fromJson(Map<String, dynamic> json)
  {
    return ProductsItemsEntity(
      id: json['id']?.toString(),
      title: json['title'] as String,
      image: json['image'] as String,
      backgroundColor: json['backgroundColor'] as String,
    );
  }

  Map<String, dynamic> toJson()
  {
    return
    {
      'id': id,
      'title': title,
      'image': image,
      'backgroundColor': backgroundColor,
    };
  }
}