import 'package:flutter/material.dart';
import 'package:true_guide/account%20screen/account_screen.dart';
import 'package:true_guide/account%20screen/help%20and%20support.dart';
import 'package:true_guide/account%20screen/language_screen.dart';
import 'package:true_guide/account%20screen/message_screen.dart';
import 'package:true_guide/category/architecture_Screen.dart';
import 'package:true_guide/bottom%20navi/bottom_navigation.dart';
import 'package:true_guide/category/business_profile.dart';
import 'package:true_guide/category/category_screen.dart';
import 'package:true_guide/bottom%20navi/features_screen.dart';
import 'package:true_guide/bottom%20navi/home_screen.dart';
import 'package:true_guide/login.dart';
import 'package:true_guide/special%20day%20poster/special%20day.dart';
import 'account screen/dashbord_screen.dart';
import 'account screen/wishlist_screen.dart';
import 'category/new3.dart';
import 'category/profile_page.dart';
import 'kyc/ver 1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Login_Screen(),
    );
  }
}
