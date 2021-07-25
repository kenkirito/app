import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/cart_page.dart';
import 'package:flutter_app/Pages/login_page.dart';
import 'package:flutter_app/utils/routes.dart';
import 'package:flutter_app/widge/theme.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.cartRoute: (context) => Cartpage(),
      },
    );
  }
}
