import 'dart:convert';
import 'package:flutter/services.dart';
import '../entity/products_items_entity.dart';

abstract class ProductsItemsRepo
{
  Future<List<ProductsItemsEntity>> getProductsItems();
}

class ProductsItemsRepoImpl implements ProductsItemsRepo
{
  @override
  Future<List<ProductsItemsEntity>> getProductsItems() async
  {
    try
    {
      // Load the JSON file
      final String jsonString = await rootBundle.loadString('assets/json/home_screen.json');
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      
      // Extract the categories array and convert to entities
      final List<dynamic> categories = jsonMap['categories'];
      return categories.map((category) => ProductsItemsEntity.fromJson(category)).toList();
    }
    catch (e)
    {
      throw Exception('Failed to load products: $e');
    }
  }
}