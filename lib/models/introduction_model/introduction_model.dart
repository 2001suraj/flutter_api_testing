import 'dart:convert';

import 'founder_msg_list.dart';
import 'staff_list.dart';
import 'vision_list.dart';

class IntroductionModel {
  List<VisionList>? visionList;
  List<FounderMsgList>? founderMsgList;
  List<StaffList>? staffList;

  IntroductionModel({this.visionList, this.founderMsgList, this.staffList});

  factory IntroductionModel.fromMap(Map<String, dynamic> data) {
    return IntroductionModel(
      visionList: (data['VisionList'] as List<dynamic>?)
          ?.map((e) => VisionList.fromMap(e as Map<String, dynamic>))
          .toList(),
      founderMsgList: (data['FounderMSGList'] as List<dynamic>?)
          ?.map((e) => FounderMsgList.fromMap(e as Map<String, dynamic>))
          .toList(),
      staffList: (data['StaffList'] as List<dynamic>?)
          ?.map((e) => StaffList.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'VisionList': visionList?.map((e) => e.toMap()).toList(),
        'FounderMSGList': founderMsgList?.map((e) => e.toMap()).toList(),
        'StaffList': staffList?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [IntroductionModel].
  factory IntroductionModel.fromJson(String data) {
    return IntroductionModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [IntroductionModel] to a JSON string.
  String toJson() => json.encode(toMap());

  IntroductionModel copyWith({
    List<VisionList>? visionList,
    List<FounderMsgList>? founderMsgList,
    List<StaffList>? staffList,
  }) {
    return IntroductionModel(
      visionList: visionList ?? this.visionList,
      founderMsgList: founderMsgList ?? this.founderMsgList,
      staffList: staffList ?? this.staffList,
    );
  }
}
