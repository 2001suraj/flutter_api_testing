import 'package:flutter_api_testing/services/add_homework.dart';
import 'package:flutter_api_testing/services/get_my_remark.dart';
import 'package:flutter_api_testing/services/leave_request.dart';
import 'package:flutter_api_testing/services/leave_type.dart';
import 'package:flutter_api_testing/services/local_storage/local.dart';
import 'package:flutter_api_testing/services/student_remark.dart';
import 'package:flutter_api_testing/services/user_auth_service.dart';
import 'package:flutter_api_testing/widgets/screens/add_assignment_screen.dart';
import 'package:flutter_api_testing/widgets/screens/assignment_list_screen.dart';
import 'package:flutter_api_testing/widgets/screens/assignment_type_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  // FormData dat = FormData.fromMap({
  //   'paraDataColl': DataAddAssignmentModel(
  //       assignmentTypeId: 1,
  //       classId: 4,
  //       deadlineDate: '2021-05-20',
  //       deadlineTime: '2021-05-20T10:00',
  //       deadlineforRedo: null,
  //       deadlineforRedoTime: null,
  //       description: 'description',
  //       isAllowLateSibmission: true,
  //       markScheme: 1,
  //       marks: 50,
  //       sectionId: 2,
  //       subjectId: 2,
  //       title: 'title',
  //       weblink: 'new tt'),
  //   'file1':
  //       '/data/user/0/com.example.flutter_api_testing/cache/c575e422-fefe-4b3b-be0a-281874880560/20230315_114137.jpg',
  // });
  // FormData dat = FormData.fromMap({
  //   'paraDataColl': DataAddAssignmentModel(
  //       assignmentTypeId: 1,
  //       classId: 4,
  //       deadlineDate: '2021-05-20',
  //       deadlineTime: '2021-05-20T10:00',
  //       deadlineforRedo: null,
  //       deadlineforRedoTime: null,
  //       description: 'description',
  //       isAllowLateSibmission: true,
  //       markScheme: 1,
  //       marks: 50,
  //       sectionId: 2,
  //       subjectId: 2,
  //       title: 'title',
  //       weblink: 'new tt'),
  //   'file1': MultipartFile.fromFile(
  //       '/data/user/0/com.example.flutter_api_testing/cache/c575e422-fefe-4b3b-be0a-281874880560/20230315_114137.jpg'),
  // });

  // {
  //   'paraDataColl': DataAddAssignmentModel(
  //       assignmentTypeId: 1,
  //       classId: 4,
  //       deadlineDate: '2021-05-20',
  //       deadlineTime: '2021-05-20T10:00',
  //       deadlineforRedo: null,
  //       deadlineforRedoTime: null,
  //       description: 'description',
  //       isAllowLateSibmission: true,
  //       markScheme: 1,
  //       marks: 50,
  //       sectionId: 2,
  //       subjectId: 2,
  //       title: 'title',
  //       weblink: 'new tt'),

  //   'file1':
  //       '/data/user/0/com.example.flutter_api_testing/cache/c575e422-fefe-4b3b-be0a-281874880560/20230315_114137.jpg',
  // File(image!.path)
  // });

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
    var addHomeWork = AddHomework().addHomework();

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
              Text('Student ', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: getstudenttoken,
                builder: (context, snapshot) {
                  return Container(
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
              Text('Teacher ', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: teachertoken,
                builder: (context, snapshot) {
                  return Container(
                    height: 150,
                    child: FutureBuilder(
                      future: LocalStorage().gettoken(value: 'Teachertoken'),
                      builder: (context, snap) {
                        return Column(
                          children: [
                            Container(
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
              SizedBox(
                height: 10,
              ),
              Text('Leave Type :',
                  style: TextStyle(fontWeight: FontWeight.bold)),

              //teacher

              FutureBuilder(
                future: teachertoken,
                builder: (context, snapshot) {
                  return Container(
                    height: 150,
                    child: FutureBuilder(
                      future: LocalStorage().gettoken(value: 'Teachertoken'),
                      builder: (context, snap) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //leave type
                            Container(
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
                            Text('Leave Type :',
                                style: TextStyle(fontWeight: FontWeight.bold)),

                            //leave request
                            FutureBuilder(
                              future: leaveRequest,
                              builder: (context, snapshot) {
                                return Container(
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

              AddAssingmentScreen(),

              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AssignmentTypeListScreen(),
                        ));
                  },
                  child: Text('Assignement Type list')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AssignmentListScreen(),
                        ));
                  },
                  child: Text('Assignement list')),
            ],
          ),
        ),
      ),
    );
  }
}
