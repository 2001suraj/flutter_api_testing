import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_api_testing/widgets/base_widgets/custom_app_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class LeaveRequestScreen extends StatefulWidget {
  const LeaveRequestScreen({super.key});

  @override
  State<LeaveRequestScreen> createState() => _LeaveRequestScreenState();
}

class _LeaveRequestScreenState extends State<LeaveRequestScreen> {
  final List<String> leaveType = ['Casual Leave', 'Others', 'Sick Leave'];

  final List<String> leaveDuration = ['Full Day', 'Half Day', 'Hourly'];

  String? selectLeaveType;

  String? selectLeaveDuration;

  DateTime selectedToDate = DateTime.now();
  DateTime selectedFromDate = DateTime.now();
  XFile? image;

  Future<void> selectToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedToDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedToDate) {
      setState(() {
        selectedToDate = picked;
      });
    }
  }

  Future<void> selectFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedFromDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedFromDate) {
      setState(() {
        selectedFromDate = picked;
      });
    }
  }

  TextEditingController toDate = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  TextEditingController fromDate = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  TextEditingController fileAttachment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(
          title: 'Leave Request',
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 228, 235, 221),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //avaiable leave balance
            Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  child: Text(
                    'Avaiable Leave Balance',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    const Spacer(),
                    //opening
                    cutomLeaveRequestDataColumn(
                        title: 'Opening', number: '0.00'),
                    const Spacer(),
                    //Quota
                    cutomLeaveRequestDataColumn(title: 'Quota', number: '0.00'),
                    const Spacer(),
                    //Leave
                    cutomLeaveRequestDataColumn(title: 'Leave', number: '0.00'),
                    const Spacer(),
                    //Balance
                    cutomLeaveRequestDataColumn(
                        title: 'Balance', number: '0.00'),
                    const Spacer(),
                  ],
                )
              ]),
            ),
            Container(
              height: 40,
              width: 150,
              margin: const EdgeInsets.only(left: 30, top: 20),
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              child: const Center(
                  child: Text(
                'Leave Details',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    letterSpacing: 0.5),
              )),
            ),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //leave type
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: DropdownButtonFormField(
                        value: selectLeaveType,
                        items: leaveType.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   selectLeaveType = newValue;
                          // });
                        },
                        decoration: const InputDecoration(
                            hintText: 'Leave Type',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ), //leave duration
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: DropdownButtonFormField(
                        value: selectLeaveDuration,
                        items: leaveDuration.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   selectLeaveDuration = newValue;
                          // });
                        },
                        decoration: const InputDecoration(
                            hintText: 'Leave Duration',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: fromDate,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () => selectFromDate(context),
                                icon: const Icon(Icons.arrow_drop_down)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (String? newValue) {
                            setState(() {
                              toDate == newValue;
                            });
                          },
                          controller: toDate,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () => selectToDate(context),
                                icon: const Icon(Icons.arrow_drop_down)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Reason',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.only(
                          left: 20, top: 20, bottom: 10, right: 10),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 150,
              margin: const EdgeInsets.only(left: 30, top: 10),
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              child: const Center(
                  child: Text(
                'Other Details',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    letterSpacing: 0.5),
              )),
            ),
            Container(
              height: 100,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextFormField(
                controller: fileAttachment,
                decoration: InputDecoration(
                  hintText: 'File Attachment',
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        final img =
                            await picker.pickImage(source: ImageSource.gallery);
                        setState(() {
                          image = img;
                          // print(
                          //   File(image!.path),
                          // );
                        });
                      },
                      icon: Transform.rotate(
                          angle: 44.5, child: const Icon(Icons.attach_file))),
                ),
              ),
            ),
            image == null
                ? const SizedBox()
                : Container(
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Expanded(
                      child: Image.file(
                        File(image!.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Submit',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  Column cutomLeaveRequestDataColumn(
      {required String title, required String number}) {
    return Column(
      children: [
        Text(title),
        Text(
          number,
        ),
      ],
    );
  }
}
