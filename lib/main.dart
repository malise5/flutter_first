import 'package:first_flutter/screens/Home.dart';
import 'package:first_flutter/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      themeMode: ThemeMode.system,
      home: Home()
    );
  }
}
