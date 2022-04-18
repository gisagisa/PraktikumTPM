import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gisanimr_tugas3/service/image_picker_helper.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  String file = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Camera Access"),
      ),
      body: Container(
        child: Column(
          children: [
            _imageSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buttonGallery(),
                _buttonCamera(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _imageSection() {
    if (file.isEmpty) {
      return Image.network(
        "https://64.media.tumblr.com/d45dd04f844b395860e58f03e74f5088/61a38aaece1595dc-36/s540x810/8f4e07fe19c0a628dc7edb9d789c33481599b488.jpg",
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.5,
      );
    } else {
      return Image.file(
        File(file),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.5,
      );
    }
  }

  void _processImage(String? filePath) {
    if (filePath != null) {
      setState(() {
        file = filePath;
      });
    }
    ;
  }

  Widget _buttonGallery() {
    return ElevatedButton(
      onPressed: () {
        ImagePickerHelper().imagePickerFromGallery((filePath) {
          _processImage(filePath);
        });
      },
      child: Text("Gallery"),
    );
  }

  Widget _buttonCamera() {
    return ElevatedButton(
      onPressed: () {
        ImagePickerHelper()
            .imagePickerFromCamera((filePath) => _processImage(filePath));
      },
      child: Text("Camera"),
    );
  }
}