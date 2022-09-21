import 'package:flutter/material.dart';
import 'package:flutter_delivery/src/login/login_page.dart';
import 'package:flutter_delivery/src/register/register_page.dart';
import 'package:flutter_delivery/src/utils/my_colors.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"delivery app flutter",
      initialRoute: "login",
      routes:{
        'login':(BuildContext context) => LoginPage(),
        'register':(BuildContext context) => RegisterPage()
      },
      theme: ThemeData(
        //fontFamily: 'NimbusSans',
        primaryColor: Mycolors.primaryColor
      ),
    );
  }
}
