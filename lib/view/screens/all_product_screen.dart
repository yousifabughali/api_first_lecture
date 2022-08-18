import 'package:api_lecture_first/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
        builder: (context, productProvider, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Products'),
              centerTitle: true,
            ),
            body: ListView.builder(
              shrinkWrap: true,
                itemCount: productProvider.products?.length ?? 0,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(height: 150,
                        width: double.infinity,
                        child: Image.network(
                            productProvider.products?[index].image ?? ''),),
                      SizedBox(height: 10,),
                      Text(productProvider.products?[index].title ?? ''),
                    ],
                  );
                }),
          );
        });
  }
}
