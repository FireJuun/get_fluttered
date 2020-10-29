import 'abstract_command.dart';

class AddCounterCommand extends AbstractCommand {
  Future<void> execute([int value]) async {
    controller.model.addCounter(value);
    controller.update();
  }
}
