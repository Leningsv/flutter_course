import 'package:adv_singleton/pages/page1_page.dart';
import 'package:adv_singleton/pages/page2_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'page1',
      routes: {'page1': (_) => Page1Page(), 'page2': (_) => Page2Page()},
    );
  }
}
