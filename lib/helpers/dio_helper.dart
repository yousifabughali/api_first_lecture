import 'package:api_lecture_first/model/product.dart';
import 'package:dio/dio.dart';
import 'dart:developer';

class DioHelper{
  DioHelper._();
  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();
  
  getAllProducts() async {
    Response response = await dio.get('https://fakestoreapi.com/products');
    List responseList = response.data;
    List<Product> products= responseList.map((e) {
      log(e.toString());
      return Product.fromJson(e);
    }).toList();

    return products;
  }
}