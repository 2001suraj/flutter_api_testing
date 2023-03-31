import 'package:flutter/material.dart';
import 'package:flutter_api_testing/services/apis/get_my_remark.dart';
import 'package:flutter_api_testing/services/apis/leave_type.dart';
import 'package:flutter_api_testing/services/apis/student_remark.dart';
import 'package:flutter_api_testing/services/apis/user_auth_service.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';
import 'package:flutter_api_testing/widgets/screens/demo_api/add_assignment_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_api/assignment_list_screen.dart';
import 'package:flutter_api_testing/widgets/screens/demo_api/assignment_type_list_screen.dart';

import '../../../services/apis/leave_request.dart';

class DemoApiScreen extends StatelessWidget {
  const DemoApiScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    var getstudenttoken = UserAuthService().getStudentToken(
      userName: 'Anish15',
      passWord: '113407',
    );
    var teachertoken = UserAuthService().getToken(
      userName: 'E.1',
      passWord: '13852',
    );

    var studentremark = StudentRemark().studentRemark();
    var myRemark = GetMyRemarks().getMyRemarks();
    var leaveType = LeaveType().getLeaveType();
    var leaveRequest = LeaveRequest().getLeaveRequest();
    // var addHomeWork = AddHomework().addHomework();

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //student
              const Text('Student ', style: TextStyle(fontWeight: FontWeight.bold)),
             const  SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: getstudenttoken,
                builder: (context, snapshot) {
                  return SizedBox(
                    height: 50,
                    child: FutureBuilder(
                      future: LocalStorage().gettoken(value: 'token'),
                      builder: (context, snap) {
                        return FutureBuilder(
                          future: studentremark,
                          builder: (context, snapshot) {
                            return ListView.builder(
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        ("student Name :  ${snapshot.data?[index].name}")),
                                    Text(
                                        ("class :  ${snapshot.data?[index].className}")),
                                  ],
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
              //teacher
              const Text('Teacher ', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: teachertoken,
                builder: (context, snapshot) {
                  return SizedBox(
                    height: 150,
                    child: FutureBuilder(
                      future: LocalStorage().gettoken(value: 'Teachertoken'),
                      builder: (context, snap) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 90,
                              child: FutureBuilder(
                                future: myRemark,
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    itemCount: snapshot.data?.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              (" UserName :  ${snapshot.data?[index].userName}")),
                                          Text(
                                              (" Father Name :  ${snapshot.data?[index].fatherName}")),
                                          Text(
                                              ("contact number :  ${snapshot.data?[index].contactNo}")),
                                          Text(
                                              ("UserId :  ${snapshot.data?[index].userId}")),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Leave Type :',
                  style: TextStyle(fontWeight: FontWeight.bold)),

              //teacher

              FutureBuilder(
                future: teachertoken,
                builder: (context, snapshot) {
                  return SizedBox(
                    height: 150,
                    child: FutureBuilder(
                      future: LocalStorage().gettoken(value: 'Teachertoken'),
                      builder: (context, snap) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //leave type
                            SizedBox(
                              height: 100,
                              child: FutureBuilder(
                                future: leaveType,
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: snapshot.data?.length,
                                    itemBuilder: (context, index) {
                                      return Text((snapshot.data?[index].name)
                                          .toString());
                                    },
                                  );
                                },
                              ),
                            ),
                            const Text('Leave Type :',
                                style: TextStyle(fontWeight: FontWeight.bold)),

                            //leave request
                            FutureBuilder(
                              future: leaveRequest,
                              builder: (context, snapshot) {
                                return SizedBox(
                                    height: 30,
                                    child: Text('${snapshot.data}'));
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
              ),

              const AddAssingmentScreen(),

              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AssignmentTypeListScreen(),
                        ));
                  },
                  child: const Text('Assignement Type list')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AssignmentListScreen(),
                        ));
                  },
                  child: const Text('Assignement list')),
            ],
          ),
        ),
      ),
    );
  }
}