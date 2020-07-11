import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/state_manager.dart';
import 'package:starbucks/models/product.model.dart';

class ProductsController extends GetxController {
  ProductsController() {
    _showAfter();
  }

  CarouselController carouselController = CarouselController();

  RxInt selectedIndex = RxInt(0);
  setSelectedIndex(int value) {
    this.selectedIndex.value = value;
    setVisibleTitle(false);
  }

  RxBool visibleTitle = RxBool(false);
  setVisibleTitle(bool visibleTitle) => this.visibleTitle.value = visibleTitle;

  RxString titleName = RxString("");
  setTitleName(String value) => titleName.value = value;
  
  RxInt titleRate = RxInt(0);
  setTitleRate(int value) => titleRate.value = value;

  RxBool visible = RxBool(true);
  setVisible(bool visible) => this.visible.value = visible;

  RxBool finished = RxBool(false);
  setFinished(bool finished) => this.finished.value = finished;

  RxList<ProductModel> products = RxList<ProductModel>([
    ProductModel(
      "assets/images/products/frappuccino.png",
      "Frappuccino",
      "Marshmallow-infused whipped cream, milk chocolate sauce, a creamy blend of vanilla, coffee, milk and ice are finished off with more marshmallowy whipped cream and a graham cracker crumble. (No campfire necessary.)",
      "Marshmallow",
      15.80,
      5,
    ),
    ProductModel(
      "assets/images/products/cafelatte.png",
      "Café Latte",
      "Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk-forward warm-up.",
      "Chocolate",
      11.90,
      4,
    ),
    ProductModel(
      "assets/images/products/macchiato.png",
      "Macchiato",
      "Freshly steamed milk with vanilla-flavored syrup marked with espresso and topped with a caramel drizzle for an oh-so-sweet finish.",
      "Caramel",
      12.50,
      4,
    ),
    ProductModel(
      "assets/images/products/espresso.png",
      "Espresso",
      "Our smooth signature Espresso Roast with rich flavor and caramelly sweetness is at the very heart of everything we do.",
      "Pure",
      5.90,
      5,
    ),
    ProductModel(
      "assets/images/products/espresso_duplo.png",
      "Mocha",
      "Our signature espresso meets white chocolate sauce and steamed milk, and then is finished off with sweetened whipped cream to create this supreme white chocolate delight.",
      "Vanilla",
      9.90,
      5,
    ),
  ]);

  updateTitleProduct() {
    if (visibleTitle.value == false) {
      setTitleName(products[selectedIndex.value].name.value);
      setTitleRate(products[selectedIndex.value].rate.value);
      setVisibleTitle(true);
    }
  }

  Future<void> _showAfter() async {
    await Future.delayed(Duration(milliseconds: 1000), () => {});
    setVisible(false);
    updateTitleProduct();
  }
}
