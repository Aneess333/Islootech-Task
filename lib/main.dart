import 'package:flutter/material.dart';
import 'package:islo_tech_test/screens/add_equipments.dart';
import 'package:islo_tech_test/screens/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const CustomNavigationBar(),
    );
  }
}
