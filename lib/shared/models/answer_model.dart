import 'dart:convert';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({
    required this.title,
    this.isRight = false,
  });

  factory AnswerModel.fromJson(String str) => AnswerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromMap(Map<String, dynamic> json) => AnswerModel(
    title: json["title"],
    isRight: json["isRight"] ?? false,
  );

  Map<String, dynamic> toMap() => {
    "title": title,
    "isRight": isRight,
  };
}

