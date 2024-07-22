import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/controler/product_getbuilder_controler_unique_id.dart';

class MainScreenGetbuilderUniqueId extends StatelessWidget {
  var counter = 0.obs;
  // RxInt counter = 0.obs;
  // var counter = RxInt(0);
  // var counter = Rx<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (() {
                    Get.find<
                        ProductGetbuilderControlerUniqueId>().setNewProduct(index);
                  }),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: GetBuilder<ProductGetbuilderControlerUniqueId>(
                          id: index,
                          init: ProductGetbuilderControlerUniqueId(),
                          builder: (ProductGetbuilderControlerUniqueId
                              productControler) {
                            return Column(
                              children: [
                                Text(
                                    "product name: ${productControler.productModel.name}"),
                                Text(
                                    "product price: ${productControler.productModel.price}"),
                                Text(
                                    "product off: ${productControler.productModel.off}"),
                                Text("counter : $counter"),
                              ],
                            );
                          }),
                    ),
                  ),
                );
              })),
    );
  }
}
