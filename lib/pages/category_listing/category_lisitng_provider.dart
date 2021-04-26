import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/models/mobile_category_list_model.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryListingProvider with ChangeNotifier {
  List<MobileCategoryListModel> categoryList = [
    MobileCategoryListModel(
        categoryName: 'Category 1',
        subCategory: [
          'Sub Category 1',
          'Sub Category 2',
          'Sub Category 3',
          'Sub Category 4',
        ],
        isExpanded: true),
    MobileCategoryListModel(
        isExpanded: false,
        categoryName: 'Category 1',
        subCategory: [
          'Sub Category 1',
          'Sub Category 2',
          'Sub Category 3',
          'Sub Category 4',
        ]),
    MobileCategoryListModel(
        isExpanded: false,
        categoryName: 'Category 1',
        subCategory: [
          'Sub Category 1',
          'Sub Category 2',
          'Sub Category 3',
          'Sub Category 4',
        ]),
    MobileCategoryListModel(
        isExpanded: false,
        categoryName: 'Category 1',
        subCategory: [
          'Sub Category 1',
          'Sub Category 2',
          'Sub Category 3',
          'Sub Category 4',
        ]),
    MobileCategoryListModel(
        isExpanded: false,
        categoryName: 'Category 1',
        subCategory: [
          'Sub Category 1',
          'Sub Category 2',
          'Sub Category 3',
          'Sub Category 4',
        ]),
  ];

  void expansionCallback(int panelIndex, bool isExpanded) {
    categoryList[panelIndex].isExpanded = !isExpanded;
    notifyListeners();
  }

  openProducts(BuildContext context, String subCategoryId) {
    AutoRouter.of(context).push(Products());
  }
}
