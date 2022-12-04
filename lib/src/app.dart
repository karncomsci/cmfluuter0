import 'package:cmflutter0/src/pages/home/home_page.dart';
import 'package:cmflutter0/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class CmApp extends StatelessWidget {
  const CmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CMApp",
      home: HomePage(),
    );
  }
}
