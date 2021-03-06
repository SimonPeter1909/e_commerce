// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:e_commerce/pages/about_us.dart' as _i7;
import 'package:e_commerce/pages/cart.dart' as _i3;
import 'package:e_commerce/pages/category_listing/category_listing.dart' as _i4;
import 'package:e_commerce/pages/contact_us.dart' as _i8;
import 'package:e_commerce/pages/dashboard.dart' as _i2;
import 'package:e_commerce/pages/login.dart' as _i5;
import 'package:e_commerce/pages/product_listing.dart' as _i6;

class FlutterRouter extends _i1.RootStackRouter {
  FlutterRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Home.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i2.Dashboard());
    },
    Cart.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i3.Cart());
    },
    Categories.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.CategoryListing());
    },
    Login.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i5.Login());
    },
    Products.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i6.ProductListing());
    },
    About_us.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i7.AboutUs());
    },
    Contact_us.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i8.ContactUs());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Home.name, path: '/'),
        _i1.RouteConfig(Cart.name, path: '/Cart'),
        _i1.RouteConfig(Categories.name, path: '/category-listing'),
        _i1.RouteConfig(Login.name, path: '/Login'),
        _i1.RouteConfig(Products.name, path: '/product-listing'),
        _i1.RouteConfig(About_us.name, path: '/about-us'),
        _i1.RouteConfig(Contact_us.name, path: '/contact-us')
      ];
}

class Home extends _i1.PageRouteInfo {
  const Home() : super(name, path: '/');

  static const String name = 'Home';
}

class Cart extends _i1.PageRouteInfo {
  const Cart() : super(name, path: '/Cart');

  static const String name = 'Cart';
}

class Categories extends _i1.PageRouteInfo {
  const Categories() : super(name, path: '/category-listing');

  static const String name = 'Categories';
}

class Login extends _i1.PageRouteInfo {
  const Login() : super(name, path: '/Login');

  static const String name = 'Login';
}

class Products extends _i1.PageRouteInfo {
  const Products() : super(name, path: '/product-listing');

  static const String name = 'Products';
}

class About_us extends _i1.PageRouteInfo {
  const About_us() : super(name, path: '/about-us');

  static const String name = 'About_us';
}

class Contact_us extends _i1.PageRouteInfo {
  const Contact_us() : super(name, path: '/contact-us');

  static const String name = 'Contact_us';
}
