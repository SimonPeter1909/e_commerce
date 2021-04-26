import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/common/common_widgets.dart';
import 'package:e_commerce/pages/common/src/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:smart_grid_view/smart_grid_view.dart';

class ProductListing extends StatefulWidget {
  @override
  _ProductListingState createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        top: true,
          child: Column(
            children: [
              HeaderWidget(),
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    InkWell(
                      child: Text('Main Category', style: TextStyle(
                        color: Colors.blue[800],
                        decoration: TextDecoration.underline
                      ),
                      ),
                      onTap: (){
                        AutoRouter.of(context).pop();
                      },
                    ),
                    Text(' >> ', style: TextStyle(color: Colors.grey),),
                    Text('Sub Category')
                  ],
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
              ),
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: [
                    _ProductsGridView(),
                    FooterWidget()
                  ],
                ),
              )),
            ],
          )),
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
        physics: ScrollPhysics(),
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