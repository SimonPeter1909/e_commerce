// To parse this JSON data, do
//
//     final dashboardModel = dashboardModelFromJson(jsonString);

import 'dart:convert';

DashboardModel dashboardModelFromJson(String str) {
  try{
    return DashboardModel.fromJson(json.decode(str));
  } catch (e){
    return null;
  }
}

String dashboardModelToJson(DashboardModel data) => json.encode(data.toJson());

class DashboardModel {
  DashboardModel({
    this.videoLink,
    this.categories,
    this.products,
  });

  String videoLink;
  List<Category> categories;
  List<Product> products;

  factory DashboardModel.fromJson(Map<String, dynamic> json) => DashboardModel(
    videoLink: json["video_link"] == null ? null : json["video_link"],
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    products: json["products"] == null ? null : List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "video_link": videoLink == null ? null : videoLink,
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x.toJson())),
    "products": products == null ? null : List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Category {
  Category({
    this.categoryId,
    this.categoryName,
    this.subCategories,
  });

  int categoryId;
  String categoryName;
  List<SubCategory> subCategories;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    categoryId: json["category_id"] == null ? null : json["category_id"],
    categoryName: json["category_name"] == null ? null : json["category_name"],
    subCategories: json["sub_categories"] == null ? null : List<SubCategory>.from(json["sub_categories"].map((x) => SubCategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "category_id": categoryId == null ? null : categoryId,
    "category_name": categoryName == null ? null : categoryName,
    "sub_categories": subCategories == null ? null : List<dynamic>.from(subCategories.map((x) => x.toJson())),
  };
}

class SubCategory {
  SubCategory({
    this.subcategoryId,
    this.subcategoryName,
  });

  int subcategoryId;
  String subcategoryName;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
    subcategoryId: json["subcategory_id"] == null ? null : json["subcategory_id"],
    subcategoryName: json["subcategory_name"] == null ? null : json["subcategory_name"],
  );

  Map<String, dynamic> toJson() => {
    "subcategory_id": subcategoryId == null ? null : subcategoryId,
    "subcategory_name": subcategoryName == null ? null : subcategoryName,
  };
}

class Product {
  Product({
    this.productId,
    this.productName,
    this.productDescription,
    this.image,
  });

  int productId;
  int productName;
  String productDescription;
  String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productId: json["product_id"] == null ? null : json["product_id"],
    productName: json["product_name"] == null ? null : json["product_name"],
    productDescription: json["product_description"] == null ? null : json["product_description"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId == null ? null : productId,
    "product_name": productName == null ? null : productName,
    "product_description": productDescription == null ? null : productDescription,
    "image": image == null ? null : image,
  };
}
