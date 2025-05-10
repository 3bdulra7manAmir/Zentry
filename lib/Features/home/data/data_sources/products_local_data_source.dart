import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entity/products_items_entity.dart';

abstract class ProductsLocalDataSource
{
  Future<List<ProductsItemsEntity>> getProducts();
}

class ProductsLocalDataSourceImpl implements ProductsLocalDataSource
{
  @override
  Future<List<ProductsItemsEntity>> getProducts() async
  {
    try
    {
      // Load JSON file
      final String jsonString = await rootBundle.loadString('assets/json/home_screen.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      // Parse categories array (products are stored as categories in home_screen.json)
      final List<dynamic> productsJson = jsonData['categories'] ?? [];
      
      // Map JSON data to ProductsItemsEntity objects
      return productsJson.map((product) => ProductsItemsEntity.fromJson(product)).toList();
    }
    
    catch (e)
    {
      throw Exception('Failed to load products: $e');
    }
  }
}
