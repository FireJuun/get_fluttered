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
        body: GetBuilder<CounterController>(
          init: CounterController(),
          builder: (controller) {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...controller.model.counterList
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
  final Counter item;
  const CountingColumn({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => CountUpCommand().execute(item)),
            Text(
              item.counter.toString(),
              style: TextStyle(fontSize: 48),
            ),
            FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () => CountDownCommand().execute(item))
          ],
        ));
  }
}

class CounterController extends GetxController {
  static CounterController get to => Get.find();

  CounterModel model = CounterModel();
}

class CounterModel {
  List<Counter> counterList = [
    Counter(),
    Counter(counter: 3.obs),
    Counter(counter: 7.obs),
  ];
}

class Counter {
  RxInt counter;

  Counter({RxInt counter}) : this.counter = counter ?? 0.obs;
}

abstract class AbstractCommand {
  CounterController get controller => Get.find();
}

class CountUpCommand extends AbstractCommand {
  Future<void> execute(Counter item) async {
    item.counter.value++;
    // controller.update();
  }
}

class CountDownCommand extends AbstractCommand {
  Future<void> execute(Counter item) async {
    item.counter.value--;
    // controller.update();
  }
}
