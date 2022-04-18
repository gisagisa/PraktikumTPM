import 'package:flutter/material.dart';
import 'package:gisanimr_tugas3/service/cameraPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 3',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const CameraPage(),
    );
  }
}