import 'dart:convert';
import 'dart:developer';
import 'dart:io';



import 'package:background_service_flutter/app/modules/home/controllers/prefs.dart';
import 'package:background_service_flutter/app/modules/home/models/SpotModel.dart';
import 'package:background_service_flutter/app/modules/home/service/LoggingInterceptor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
/*  // static String baseUrl = 'http://10.100.1.35/';
  static String baseUrl = 'http://119.148.45.166:1062/';

  final client = Dio(options);
  final prefs = Get.put(Prefs());*/
  static var client = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  // var client = http.Client();

  ///test
  // static String? baseUrl = 'http://192.168.20.31:8075/';
  ///live
  static String? baseUrl = 'http://115.127.99.113:1075/';
  // static String? baseUrl = 'http://www.opuserp.com/';
  static final prefs = Get.find<Prefs>();
  final box = GetStorage();


  // Active Employee api
  static Future<List<SpotModel>> getAllSpot() async {
    print("api callded");
    final url = baseUrl! + 'Api/Attendance/GetAllSpote';
    var response = await client.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${prefs.token.val}'
    });

    print(response.body);

    if (response.statusCode == 200) {

      return spotModelFromJson(response.body);
    } else {
      //toastCheck(response);
      throw HttpException('Error getAllSpot');
    }
  }



}
