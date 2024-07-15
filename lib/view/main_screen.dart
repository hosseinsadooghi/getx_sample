import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/model/product_model.dart';

class MainScreen extends StatelessWidget {
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  Rx<ProductModel> productModel =
      ProductModel(name: "ali", price: "5", off: "1").obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Column(
                children: [
                  Text("product name: ${productModel.value.name}"),
                  Text("product price: ${productModel.value.price}"),
                  Text("product off: ${productModel.value.off}"),
                  Text("counter : $counter"),
                ],
              );
            })),
            ElevatedButton(
                onPressed: () {
                  counter = counter + 1;
                  productModel.update((value) {
                    value!.name = "sajad";
                  });
                },
                child: Text("press"))
          ],
        ),
      ),
    );
  }
}
