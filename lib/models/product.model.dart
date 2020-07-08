import 'package:get/state_manager.dart';

class ProductModel extends GetxController {
  ProductModel(
    String asset,
    String name,
    String description,
    String flavor,
    double amount,
    int rate,
  ) {
    setAsset(asset);
    setName(name);
    setDescription(description);
    setFlavor(flavor);
    setAmount(amount);
    setRate(rate);
  }

  RxString name = RxString();
  setName(String value) => this.name.value = value;

  RxString description = RxString();
  setDescription(String value) => this.description.value = value;

  RxString flavor = RxString();
  setFlavor(String value) => this.flavor.value = value;

  RxInt rate = RxInt();
  setRate(int value) => this.rate.value = value;

  RxDouble amount = RxDouble();
  setAmount(double value) => this.amount.value = value;

  RxString asset = RxString();
  setAsset(String value) => this.asset.value = value;
}
