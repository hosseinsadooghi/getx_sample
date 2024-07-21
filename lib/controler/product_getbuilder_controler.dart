import 'package:get/get.dart';
import 'package:getx_sample/model/product_model.dart';

class ProductGetbuilderControler extends GetxController {
  ProductModel productModel = ProductModel(name: "ali", price: "5", off: "1");
  setNewProduct() {
    productModel = ProductModel(name: "ali", price: "5", off: "1");
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("oninit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("on Ready");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("on Close");
  }
}
