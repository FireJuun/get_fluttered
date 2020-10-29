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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CountingColumn(),
                  CountingColumn(),
                  CountingColumn(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CountingColumn extends StatelessWidget {
  const CountingColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: Icon(Icons.add), onPressed: () => controller.rxCounter++),
        Text(
          controller.rxCounter.value.toString(),
          style: TextStyle(fontSize: 48),
        ),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: () => controller.rxCounter--)
      ],
    );
  }
}

class CounterController extends GetxController {
  static CounterController get to => Get.find();

  RxInt rxCounter = 0.obs;
}
