import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/cart.dart';
import 'package:e_commerce/pages/category_listing.dart';
import 'package:e_commerce/pages/dashboard.dart';
import 'package:e_commerce/pages/login.dart';
import 'package:e_commerce/pages/product_listing.dart';

@AdaptiveAutoRouter(routes: [
  AutoRoute(page: Dashboard, initial: true, name: 'home'),
  AutoRoute(page: Cart, name: 'cart'),
  AutoRoute(page: CategoryListing, name: 'categories'),
  AutoRoute(page: Login, name: 'login', guards: []),
  AutoRoute(page: ProductListing, name: 'products'),
])
class $FlutterRouter {}
