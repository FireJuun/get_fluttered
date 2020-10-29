import 'package:get/get.dart';
import 'package:get_fluttered/controllers/counter_controller.dart';

abstract class AbstractCommand {
  CounterController get controller => Get.find();
}
