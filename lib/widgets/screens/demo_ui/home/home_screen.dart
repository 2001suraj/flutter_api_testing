import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/assets_request_list/assets_request_list_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/timetable/timetable_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssetsRequestListScreen()));
                  },
                  child: Text('Asset Request List')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TimeTableScreen()));
                  },
                  child: Text('Time table')),
            ],
          ),
        ),
      ),
    );
  }
}
