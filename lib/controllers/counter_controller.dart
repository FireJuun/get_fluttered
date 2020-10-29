import 'package:get/get.dart';
import 'package:get_fluttered/models/counter_model.dart';

class CounterController extends GetxController {
  static CounterController get to => Get.find();

  final CounterModel _model = CounterModel();
  CounterModel get model => _model;
}
