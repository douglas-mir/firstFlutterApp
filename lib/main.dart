import 'package:flutter/material.dart';
import 'package:my_app/page_two.dart';
import 'package:my_app/pages/home_pages.dart';
import 'package:my_app/to_do_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const pageTwo(),
    );
  }
}
