import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_api_testing/services/apis/add_assignment.dart';
import 'package:image_picker/image_picker.dart';

class AddAssingmentScreen extends StatelessWidget {
  AddAssingmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    XFile? image;

    var addAssign = AddAssignment().getAddAssignment();

    return Container(
      child: FutureBuilder(
          future: addAssign,
          builder: (context, snapshot) {
            return TextButton(
                onPressed: () async {
                  final ImagePicker picker = ImagePicker();
                  final img =
                      await picker.pickImage(source: ImageSource.gallery);
                  // setState(() {
                  image = img;
                  print(
                    File(image!.path),
                  );
                  // });
                },
                child: Text('save'));
          }),
    );
  }
}
