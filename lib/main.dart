import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IDS mini project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListPictureView(),
      initialBinding: PictureBinding(),
    );
  }
}
