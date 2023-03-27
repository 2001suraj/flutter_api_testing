import 'dart:convert';

class FeedBackSuggestionModel {
  String? responseMsg;
  bool? isSuccess;

  FeedBackSuggestionModel({this.responseMsg, this.isSuccess});

  factory FeedBackSuggestionModel.fromMap(Map<String, dynamic> data) {
    return FeedBackSuggestionModel(
      responseMsg: data['ResponseMSG'] as String?,
      isSuccess: data['IsSuccess'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'ResponseMSG': responseMsg,
        'IsSuccess': isSuccess,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FeedBackSuggestionModel].
  factory FeedBackSuggestionModel.fromJson(String data) {
    return FeedBackSuggestionModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FeedBackSuggestionModel] to a JSON string.
  String toJson() => json.encode(toMap());

  FeedBackSuggestionModel copyWith({
    String? responseMsg,
    bool? isSuccess,
  }) {
    return FeedBackSuggestionModel(
      responseMsg: responseMsg ?? this.responseMsg,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
