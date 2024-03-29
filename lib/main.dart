import 'package:codepur_flutter_catalog/core/store.dart';
// import 'package:codepur_flutter_catalog/pages/cart_page.dart';
import 'package:codepur_flutter_catalog/pages/home_page.dart';
import 'package:codepur_flutter_catalog/pages/login_page.dart';
import 'package:codepur_flutter_catalog/utils/routes.dart';
import 'package:codepur_flutter_catalog/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main() {
  runApp(VxState(
    store: MyStore(),

    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),

      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
