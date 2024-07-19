import 'package:get/get.dart';
import 'package:getx_sample/model/product_model.dart';

class ProductControler extends GetxController{
  Rx<ProductModel> productModel =
      ProductModel(name: "ali", price: "5", off: "1").obs;
}