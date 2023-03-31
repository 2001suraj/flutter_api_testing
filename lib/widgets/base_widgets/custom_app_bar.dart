import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    required this.title
  }) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 2, 55),
        title: Text(title),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

