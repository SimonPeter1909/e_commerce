import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/about_us.dart';
import 'package:e_commerce/pages/category_listing.dart';
import 'package:e_commerce/pages/contact_us.dart';
import 'package:e_commerce/pages/dashboard.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text('Home'),
          onTap: () {
            AutoRouter.of(context).push(Home());
          },
        ),
        ListTile(
          leading: Icon(Icons.category_outlined),
          title: Text('Categories'),
          onTap: () {
            AutoRouter.of(context).push(Categories());
          },
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('About Us'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.contact_mail_outlined),
          title: Text('Contact Us'),
          onTap: () {},
        ),
      ],
    ));
  }
}
