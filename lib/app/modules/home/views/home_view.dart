import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body:  Center(
        child: ElevatedButton(
          child: Text("off"),
          onPressed: () async {
            final service = FlutterBackgroundService();
            var isRunning = await service.isRunning();

            print("============${isRunning}");
            if (isRunning) {
              service.invoke("stopService");

            } else {
              service.startService();
            }

            if (!isRunning) {
              print("stop");
            } else {
              print("Start");


            }

          },
        ),
      ),
    );
  }
}
