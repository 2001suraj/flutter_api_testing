// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/base_widgets/custom_app_bar.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/calender/components/calender_widget.dart';
import 'package:flutter_api_testing/widgets/screens/demo_ui/calender/components/single_event_calender.dart';
import 'package:intl/intl.dart';

class CalenderScreen extends StatelessWidget {
  CalenderScreen({super.key});
  String currentMonth = DateFormat.MMMM().format(DateTime.now());
  String monthYear = DateFormat.yMMMM().format(DateTime.now());

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.green,
    Colors.purple,
    Colors.purple,
    Colors.purple,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Calender',
        ),
      ),
      backgroundColor: Color.fromARGB(255, 228, 235, 221),
      body: SingleChildScrollView(
        primary: false,
        child: Container(
          color: Color.fromARGB(255, 228, 235, 221),
          height: MediaQuery.of(context).size.height * 1.1,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // month and year
              Text(
                '$monthYear',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //table calender

              SelectDateWidget(),

              // text event
              Text(
                '$currentMonth Month\'s Event and Holidays',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              //events

              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: colors.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Color.fromARGB(255, 248, 255, 252),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 200,
                              child: Column(
                                children: [
                                  // detail container
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 30,
                                      horizontal: 15,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Colors.purple
                                                  .withOpacity(0.1),
                                              child: Icon(
                                                Icons
                                                    .photo_size_select_actual_outlined,
                                                size: 25,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 8.0),
                                                  child: Text(
                                                    'Ghode Jatra',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Public Holiday',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.close,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  //date
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.symmetric(
                                            horizontal: BorderSide(
                                                width: 0.1,
                                                color: Colors.black))),
                                    height: 40,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.calendar_today),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text('Date : 2079 Chaitra 7')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.symmetric(
                                            horizontal: BorderSide(
                                                width: 0.05,
                                                color: Colors.black))),
                                    height: 40,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        //passed
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          child: Text(
                                            'Passed',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black54),
                                          ),
                                        ),

                                        // for class
                                        Text(
                                          'For Class : ',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: SingelEventContainer(
                        color: colors[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

