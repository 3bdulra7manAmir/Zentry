class ProductsItemsEntity
{
  final String? id;
  final String? title;
  final String? image;
  final String? backgroundColor;

  ProductsItemsEntity(this.id, this.title, this.image, this.backgroundColor);

  factory ProductsItemsEntity.fromJson(Map<String, dynamic> json)
  {
    return ProductsItemsEntity(
      json['id'].toString(),
      json['title'] as String?,
      json['image'] as String?,
      json['backgroundColor'] as String?,
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