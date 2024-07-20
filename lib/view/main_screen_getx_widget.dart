import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controler/product_controler.dart';
import 'package:getx_sample/model/product_model.dart';

class MainScreenGetxWidget extends StatelessWidget {
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
                init: ProductControler(),
                builder: (ProductControler productControler) {
                  return Column(
                    children: [
                      Text(
                          "product name: ${productControler.productModel.value.name}"),
                      Text(
                          "product price: ${productControler.productModel.value.price}"),
                      Text(
                          "product off: ${productControler.productModel.value.off}"),
                      Text("counter : $counter"),
                    ],
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  Get.find<ProductControler>().productModel.update((value) {
                    value!.name = "sajad";
                  });
                },
                child: Text("press")),
            ElevatedButton(onPressed: () {}, child: Text("get back"))
          ],
        ),
      ),
    );
  }
}
