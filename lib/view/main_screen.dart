import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controler/product_controler.dart';
import 'package:getx_sample/model/product_model.dart';
import 'package:getx_sample/view/main_screen_getx_widget.dart';

class MainScreen extends StatelessWidget {
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  ProductControler productControler = Get.put(ProductControler());

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
                  Text(
                      "product name: ${productControler.productModel.value.name}"),
                  Text(
                      "product price: ${productControler.productModel.value.price}"),
                  Text(
                      "product off: ${productControler.productModel.value.off}"),
                  Text("counter : $counter"),
                ],
              );
            })),
            ElevatedButton(
                onPressed: () {
                  counter = counter + 1;
                  productControler.productModel.update((value) {
                    value!.name = "sajad";
                  });
                },
                child: Text("press")),
            ElevatedButton(
                onPressed: () {
                  Get.to(MainScreenGetxWidget());
                },
                child: Text("go next"))
          ],
        ),
      ),
    );
  }
}
