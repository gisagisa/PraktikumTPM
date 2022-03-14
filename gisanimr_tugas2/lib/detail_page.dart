import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/buku.dart';

class DetailPage extends StatelessWidget {
  // final Movie movie;
  final String image;
  final String name;
  final String ket;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.ket,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.network(image, height: 350,),
              SizedBox(height: 20,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text(ket, style: TextStyle(color: Colors.green),),
            ],
          ),
        ),
      ),
    );
  }
}