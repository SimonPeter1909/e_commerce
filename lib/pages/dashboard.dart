import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/common/src/app_drawer.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './common/common_widgets.dart';
import 'package:smart_grid_view/smart_grid_view.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            HeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _BannerWidget(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: .5,
                                offset: Offset(0, 3))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 8),
                        child: Text(
                          'Trending Products',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _ProductsGridView(),
                    SizedBox(
                      height: 10,
                    ),
                    FooterWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      color: Colors.blue,
      width: double.infinity,
    );
  }
}

class _ProductsGridView extends StatefulWidget {
  @override
  __ProductsGridViewState createState() => __ProductsGridViewState();
}

class __ProductsGridViewState extends State<_ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: SmartGridView(
        padding: const EdgeInsets.all(12),
        tileWidth: 250,
        tileHeight: 400,
        shrinkWrap: true,
        children: List.generate(15, (index) => _ProductItem()),
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
