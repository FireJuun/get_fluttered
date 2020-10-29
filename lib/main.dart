import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Get Fluttered'),
        ),
        body: GetX<CounterController>(
          init: CounterController(),
          builder: (controller) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () => controller.rxCounter++),
                  Text(
                    controller.rxCounter.value.toString(),
                    style: TextStyle(fontSize: 48),
                  ),
                  FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: () => controller.rxCounter--)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CounterController extends GetxController {
  RxInt rxCounter = 0.obs;
}
