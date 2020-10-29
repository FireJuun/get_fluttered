import 'package:get_fluttered/models/data/counter.dart';

import 'abstract_command.dart';

class RemoveCounterCommand extends AbstractCommand {
  Future<void> execute([Counter value]) async {
    controller.model.removeCounter(value);
    controller.update();
  }
}
