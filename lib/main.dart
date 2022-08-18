import 'package:api_lecture_first/helpers/dio_helper.dart';
import 'package:api_lecture_first/provider/product_provider.dart';
import 'package:api_lecture_first/view/screens/all_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(create: (context)=> ProductProvider()),
      ],
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AllProductsScreen(),
      ),
    );
  }
}
/*
* Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            centerTitle: true,
          ),
          body: Center(
            child: ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> AllProductsScreen()));
              // DioHelper.dioHelper.getAllProducts();
            },child: Text('show the api data Screen'),),
          ),
        ),*/