import 'package:get_fluttered/models/data/counter.dart';

import 'abstract_command.dart';

class CountDownCommand extends AbstractCommand {
  Future<void> execute(Counter item) async {
    item.counter.value--;
    // controller.update();
  }
}
