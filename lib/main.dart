import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/screens/demo_api/demo_api_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/assets_request_list/assets_request_list_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/calender/calender_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/home/home_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/leave_request/leave_request_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/notification/notification_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/student%20leave%20request/student_leave_request_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: DemoApiScreen(),
        home: const MainScreen(),
      );
    });
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),

    // const NotificationScreen(),
    StudentLeaveRequestScreen(),
    CalenderScreen(),
    // ActivityScreen()
    LeaveRequestScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_axis_rounded),
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}
