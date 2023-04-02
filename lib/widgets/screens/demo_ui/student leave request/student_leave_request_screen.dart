import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StudentLeaveRequestScreen extends StatelessWidget {
  StudentLeaveRequestScreen({super.key});
  final List<String> shortByList = ['Approved', 'Denied', 'Pending'];

  String? selectShortBy;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        backgroundColor: const Color.fromARGB(255, 41, 2, 55),
        title: const Text('Student Leave Resquest'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey)),
                    ),
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Total Leave Request : 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: DropdownButtonFormField(
                    isExpanded: true,
                    value: selectShortBy,
                    items: shortByList.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                    decoration: const InputDecoration(
                        hintText: 'Sort By',
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        hintStyle: TextStyle(fontSize: 14),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          //event
          Row(
            children: [
              Expanded(
                  child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return IntrinsicHeight(
                    child: Row(
                      children: [
                        //vertical divider

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 80,
                                width: 60,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    color: Colors.white),
                                child: Column(children: const [
                                  Text(
                                    '31',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Text(
                                    'Mar',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  )
                                ]),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 2.5.h, top: 13.h),
                                child: VerticalDivider(
                                  color: Colors.green[400],
                                  thickness: 1,
                                ),
                              ),
                              Positioned(
                                top: 90,
                                left: 19,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.green[400],
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.white, width: 2),
                                        color: Colors.green[400]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 150,
                          width: 74.w,
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                padding: const EdgeInsets.only(left: 10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Row(
                                  children: [
                                    requestContainer(
                                        color: Colors.green,
                                        title: 'Approved  : ',
                                        date: '0'),
                                    requestContainer(
                                        color: Colors.red,
                                        title: 'Denied  : ',
                                        date: '0'),
                                    requestContainer(
                                        color: Colors.amber,
                                        title: 'Pending  : ',
                                        date: '1'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Requested  : 1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.green[400],
                                        child: const Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 20,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ],
      )),
    );
  }

  FittedBox requestContainer({required color, required title, required date}) {
    return FittedBox(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 5,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
