import 'package:challenge_1_dashboard/controllers/counter_controller.dart';
import 'package:challenge_1_dashboard/pages/other.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${_counterController.counter.value}"),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Get.to(const OtherScreen()),
                  child: const Text("Other Screen")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () => _counterController.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
