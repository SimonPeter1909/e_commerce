import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/common/src/header_provider.dart';
import 'package:e_commerce/res.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HeaderProvider>(
      builder: (context, provider, child) {
        provider.getCurrentIndex(context);
        return DefaultTabController(
          length: 4,
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                AnimatedContainer(
                  width: provider.isSearchEnabled
                      ? 0
                      : MediaQuery.of(context).size.width,
                  duration: buildDuration(),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            Res.logo,
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: BottomNavigationBar(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          selectedItemColor: Colors.blue,
                          unselectedItemColor: Colors.grey,
                          onTap: (val) => provider.onTapIndex(context, val),
                          currentIndex: provider.getCurrentIndex(context),
                          type: BottomNavigationBarType.fixed,
                          items: [
                            BottomNavigationBarItem(
                                icon: Icon(Icons.home), label: 'Home'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.category),
                                label: 'Categories'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.info_outline),
                                label: 'About Us'),
                            BottomNavigationBarItem(
                                icon: Icon(Icons.contact_mail_outlined),
                                label: 'Contact Us'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  provider.toggleSearch();
                                },
                                icon: Icon(Icons.search)),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  AutoRouter.of(context).push(Cart());
                                },
                                icon: Icon(Icons.shopping_cart_outlined)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  width: provider.isSearchEnabled
                      ? MediaQuery.of(context).size.width
                      : 0,
                  duration: buildDuration(),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Spacer(),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: SearchTextField()),
                      Spacer(),
                      IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => provider.toggleSearch()),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Duration buildDuration() => Duration(microseconds: 500);
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
          hintText: 'Search Products',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );
  }
}
