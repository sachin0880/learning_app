import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/colors.dart';

class profile_imageselector extends StatefulWidget {
  const profile_imageselector({
    super.key,
  });

  @override
  State<profile_imageselector> createState() => _profile_imageselectorState();
}

class _profile_imageselectorState extends State<profile_imageselector> {
  String? selectedImage = "";

  Future<void> pickImage() async {
    final pickImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickImage != null) {
      setState(() {
        selectedImage = pickImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        GestureDetector(
          onTap: () {
            pickImage();
          },
          child: CircleAvatar(
            radius: 50,
            child: selectedImage != null && selectedImage!.isNotEmpty
                ? ClipRRect(borderRadius: BorderRadius.circular(30),
                  child: Image.file(
                      File(selectedImage!),
                      fit: BoxFit.cover,
                    ),
                )
                : Icon(
                    Icons.person,
                    size: 40,
                  ),
            backgroundColor: Colors.grey.withOpacity(0.2),
          ),
        ),
        selectedImage!=null&&selectedImage!.isNotEmpty?Text(""):Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            padding: EdgeInsets.zero,
            height: 20,
            width: 20,
            color: newprimaryColor,
            child: Center(
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
