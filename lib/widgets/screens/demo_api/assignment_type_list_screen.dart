import 'package:flutter/material.dart';
import 'package:flutter_api_testing/services/apis/assignment_type_list.dart';

class AssignmentTypeListScreen extends StatelessWidget {
  const AssignmentTypeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var assignmentTypeList = AssignmentTypeList().getAssignmentTypeList();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: assignmentTypeList,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name  :  ${snapshot.data?[index].name}"),
                    Text("AssignmentTypeId :  ${snapshot.data?[index].assignmentTypeId}"),
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
