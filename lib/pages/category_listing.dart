import 'dart:html';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:e_commerce/pages/common/src/footer.dart';
import 'package:e_commerce/pages/common/src/header.dart';
import 'package:flutter/material.dart';
import 'package:smart_grid_view/smart_grid_view.dart';

class CategoryListing extends StatefulWidget {
  @override
  _CategoryListingState createState() => _CategoryListingState();
}

class _CategoryListingState extends State<CategoryListing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              HeaderWidget(),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0,6),
                      blurRadius: 5,
                      spreadRadius: .2
                    )
                  ]
                ),
                child: TabBar(tabs: [
                  Tab(
                    text: 'Category 1',
                  ),
                  Tab(
                    text: 'Category 2',
                  ),
                  Tab(
                    text: 'Category 3',
                  ),
                  Tab(
                    text: 'Category 4',
                  ),
                  Tab(
                    text: 'Category 5',
                  ),
                  Tab(
                    text: 'Category 6',
                  ),
                ],
                  indicator: BubbleTabIndicator(
                    indicatorColor: Colors.blue,
                    tabBarIndicatorSize: TabBarIndicatorSize.label,
                    indicatorRadius: 4,
                    indicatorHeight: 30,
                  ),
                  unselectedLabelStyle: Theme.of(context).textTheme.bodyText1,
                  labelStyle: Theme.of(context).textTheme.headline6,
                  unselectedLabelColor: Colors.black,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: double.infinity),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text('Sub Categories'),
                                    ),
                                    Divider(),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 20,
                                      itemBuilder: (context, index) => ListTile(
                                        onTap: (){},
                                        title: Text('Sub Category $index'),
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 4,
                                child: SmartGridView(
                                  padding: const EdgeInsets.all(12),
                                  tileWidth: 250,
                                  tileHeight: 400,
                                  shrinkWrap: true,
                                  children: List.generate(
                                      15, (index) => _ProductItem()),
                                )),
                          ],
                        ),
                      ),
                      FooterWidget()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: FlutterLogo(),
            ),
            Spacer(),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Product Name',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Product Description',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add_shopping_cart), onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
