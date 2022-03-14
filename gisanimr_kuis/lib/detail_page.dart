import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/menu.dart';

class DetailPage extends StatelessWidget {

  final String image;
  final String name;
  final String desc;
  final String category;
  final int price;
  final int sold;
  final int reviewer;


  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.desc,
    required this.category,
    required this.price,
    required this.sold,
    required this.reviewer,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(255,140,0,100),
          title: Text('Detail Menu'),
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
              Text(desc, style: TextStyle(color: Colors.grey),),
              SizedBox(height: 16,),
              Text(category,),
              SizedBox(height: 16,),
              Text("Rp. $price", style : TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("Sold : $sold", style: TextStyle(color: Colors.indigo),),
              SizedBox(height: 16,),
              Text("Reviewer : $reviewer", style: TextStyle(color: Colors.indigo),),
            ],
          ),
        ),
      ),
    );
  }
}