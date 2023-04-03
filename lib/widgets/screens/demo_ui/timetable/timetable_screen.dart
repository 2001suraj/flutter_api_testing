import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Define the number of tabs in each tab bar
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TimeTable'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'My TimeTable'),
              Tab(text: 'Class TimeTable'),
              Tab(text: 'Exam TimeTable'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //my timetable
            DefaultTabController(
              length: 7,
              child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  toolbarHeight: 0,
                  bottom: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'Sun'),
                      Tab(text: 'Mon'),
                      Tab(text: 'Tue'),
                      Tab(text: 'Wed'),
                      Tab(text: 'Thu'),
                      Tab(text: 'Fri'),
                      Tab(text: 'Sat'),
                    ],
                  ),
                ),
                body: TabBarView(children: [
                  //sun
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        width: 120,
                        margin: const EdgeInsets.only(left: 30, top: 20),
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10))),
                        child: const Center(
                            child: Text(
                          'Eight-Nine',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              letterSpacing: 0.5),
                        )),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.grey),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                      Container(
                        height: 130,
                        width: 250,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromARGB(220, 235, 132, 125)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            ListTile(
                              title: Text(
                                'Opt.Maths',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              subtitle: Row(children: [
                                const Icon(
                                  Icons.menu_book_outlined,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Nine -',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ]),
                            ),
                            const ListTile(
                              dense: true,
                              title: Text('6:40AM - 12:20AM'),
                              trailing: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white60,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  //mon
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 2'),
                    ),
                  ),
                  //tue
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 3'),
                    ),
                  ),
                  //wed
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 3'),
                    ),
                  ),

                  //thu
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 3'),
                    ),
                  ),

                  //fri
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 3'),
                    ),
                  ),

                  //sat
                  Container(
                    child: const Center(
                      child: Text('Content for Tab 3'),
                    ),
                  ),
                ]),
              ),
            ),

            //class Time table

            Container(
              child: const Center(
                child: Text('Content for Tab 2'),
              ),
            ),

            //exam time table
            Container(
              child: const Center(
                child: Text('Content for Tab 3'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
