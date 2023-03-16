
// To parse this JSON data, do
//
//     final spotModel = spotModelFromJson(jsonString);

import 'dart:convert';

List<SpotModel> spotModelFromJson(String str) => List<SpotModel>.from(json.decode(str).map((x) => SpotModel.fromJson(x)));

String spotModelToJson(List<SpotModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SpotModel {
  SpotModel({
    required this.locationName,
    required this.locationDescription,
    required this.latitude,
    required this.longitude,
    required this.movementRange,
    required this.attendanceAllowRange,
    required this.id,
  });

  String locationName;
  String locationDescription;
  String latitude;
  String longitude;
  int movementRange;
  int attendanceAllowRange;
  int id;

  factory SpotModel.fromJson(Map<String, dynamic> json) => SpotModel(
    locationName: json["LocationName"]??"",
    locationDescription: json["LocationDescription"]??"",
    latitude: json["latitude"]??"0.0",
    longitude: json["longitude"]??"0.0",
    movementRange: json["MovementRange"]??100,
    attendanceAllowRange: json["AttendanceAllowRange"]??20,
    id: json["Id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "LocationName": locationName,
    "LocationDescription": locationDescription,
    "latitude": latitude,
    "longitude": longitude,
    "MovementRange": movementRange,
    "AttendanceAllowRange": attendanceAllowRange,
    "Id": id,
  };
}
