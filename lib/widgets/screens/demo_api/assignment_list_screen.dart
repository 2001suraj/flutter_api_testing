import 'package:flutter/material.dart';
import 'package:flutter_api_testing/services/apis/assignment_list.dart';

class AssignmentListScreen extends StatelessWidget {
  const AssignmentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var assignmentList = AssignmentListService().getAssignmentList();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: assignmentList,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Class Id  :  ${snapshot.data?[index].classId} "),
                  
                    Text("Class :  ${snapshot.data?[index].className} "),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
