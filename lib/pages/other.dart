import 'package:challenge_1_dashboard/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.find();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${counterController.counter.value}" ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text("Home Screen")),
        ],
      ),
    );
  }
}
