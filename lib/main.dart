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
                  ...controller.rxCounterList
                      .map((e) => CountingColumn(item: e)),
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
  final RxInt item;
  const CountingColumn({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.find();
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => controller.countUp(item)),
          Text(
            item.value.toString(),
            style: TextStyle(fontSize: 48),
          ),
          FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () => controller.countDown(item))
        ],
      ),
    );
  }
}

class CounterController extends GetxController {
  static CounterController get to => Get.find();

  List<RxInt> rxCounterList = [0.obs, 0.obs, 0.obs];
  // RxInt rxCounter = 0.obs;

  void countUp(RxInt item) => item.value++;
  void countDown(RxInt item) => item.value--;
}
