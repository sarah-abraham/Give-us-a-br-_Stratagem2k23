import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late File? _image = null;

  Future<void> _getImageFromCamera() async {
    final image = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_image != null)
              Image.file(
                _image!,
                height: 200,
              ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _getImageFromCamera,
              child: Text('Take Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
