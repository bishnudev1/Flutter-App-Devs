import 'package:flutter/material.dart';
import 'package:hello_world/Pages/home.dart';
import 'package:hello_world/utils/routes.dart';
import 'package:hello_world/utils/themes.dart';
import 'Pages/home.dart';
import 'Pages/login.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.loginRoute,
        routes: {
          MyRoutes.homeRoute: (context) => Home(),
          MyRoutes.loginRoute: (context) => Login(),
        });
  }
}
