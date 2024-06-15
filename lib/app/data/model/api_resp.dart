// To parse this JSON data, do
//
//     final apiStatus = apiStatusFromJson(jsonString);

import 'dart:convert';

ApiResp apiStatusFromJson(String str) => ApiResp.fromJson(json.decode(str));

String apiStatusToJson(ApiResp data) => json.encode(data.toJson());

class ApiResp {
  int status;
  String message;
  dynamic data;

  ApiResp({
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResp.fromJson(Map<String, dynamic> json) => ApiResp(
    status: json["status"],
    message: json["message"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}


