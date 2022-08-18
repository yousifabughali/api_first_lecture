import 'package:api_lecture_first/helpers/dio_helper.dart';
import 'package:api_lecture_first/model/product.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductProvider(){
    getAllProducts();
  }
  List<Product>? products;
  getAllProducts() async {
    products= await DioHelper.dioHelper.getAllProducts();
    notifyListeners();
  }

}
