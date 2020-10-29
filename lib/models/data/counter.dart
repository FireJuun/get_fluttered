import 'package:get/get.dart';

class Counter {
  RxInt counter;

  Counter({RxInt counter}) : this.counter = counter ?? 0.obs;
}
