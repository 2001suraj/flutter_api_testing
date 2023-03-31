import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text("home screen"),
              Stack(
                children: [
                  Row(
                    children: [Container(
                      
                    )],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
