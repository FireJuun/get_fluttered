import 'package:get/get.dart';
import 'package:get_fluttered/models/counter_model.dart';

class CounterController extends GetxController {
  static CounterController get to => Get.find();

  CounterModel model = CounterModel();
}
