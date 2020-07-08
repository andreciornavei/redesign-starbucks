import 'package:get/state_manager.dart';

class ProductController extends GetxController{

  final int maxQuantity = 10;

  RxInt size = RxInt(1);
  setSize(int size) => this.size.value = size;

  RxInt quantity = RxInt(1);
  decrementQuantity() => this.quantity.value > 1 ? this.quantity.value -= 1 : 0;
  incrementQuantity() => this.quantity.value < maxQuantity ? this.quantity.value += 1 : maxQuantity;

}