import 'package:flutter/material.dart';

import 'package:custompainter/src/pages/headers_page.dart';
import 'package:flutter/services.dart';



void main() {
  /// Modificar status bar
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Desings',
      home: HeadersPage()
    );
  }
}