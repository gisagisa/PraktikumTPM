import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget> [
              Container(
                padding: EdgeInsets.fromLTRB(0, 90, 0, 90),
                child: Image.asset(
                    "images/logo_flutter.jpg",
                    height: 80,
                )
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: const TextField(
                     decoration: InputDecoration(
                       hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                     ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    minimumSize: Size(88, 40),
                  ),
                  child: Text("Log In"),
                  onPressed: () {  },
                )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
                  child: TextButton(
                    onPressed: () { },
                    child: Text("Forgot password?"),
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


