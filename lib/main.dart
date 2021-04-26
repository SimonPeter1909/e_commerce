import 'package:auto_route/auto_route.dart';
import 'package:e_commerce/pages/category_listing/category_lisitng_provider.dart';
import 'package:e_commerce/pages/common/src/header_provider.dart';
import 'package:e_commerce/utils/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pages/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = FlutterRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HeaderProvider>(
          create: (context) => HeaderProvider(),
        ),
        ChangeNotifierProvider<CategoryListingProvider>(
            create: (context) => CategoryListingProvider())
      ],
      child: MaterialApp.router(
        title: 'E-Commerce',
        supportedLocales: [
          Locale('en'),
        ],
        theme: ThemeData(
            primarySwatch: Colors.blue, textTheme: GoogleFonts.latoTextTheme()),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        // home: Dashboard(),
      ),
    );
  }
}
