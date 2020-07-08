import 'package:get/get.dart';

import 'pages/product/index.dart';
import 'pages/products/index.dart';
import 'pages/splash/index.dart';

routes() => [
  GetPage(name: '/', page: () => Splash()),
  GetPage(name: '/products', page: () => Products(), transition: Transition.fadeIn, transitionDuration: Duration(milliseconds: 1000)),
  GetPage(name: '/products/:index', page: () => Product(), transition: Transition.fadeIn, transitionDuration: Duration(milliseconds: 1000)),
];