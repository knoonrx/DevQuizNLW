import 'dart:convert';

class UserModel {
  final String name;
  final String photoUrl;
  final int score;

  UserModel({
    required this.name,
    required this.photoUrl,
    required this.score,
  });

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    photoUrl: json["photoUrl"],
    score: json["score"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "photoUrl": photoUrl,
    "score": score,
  };
}
