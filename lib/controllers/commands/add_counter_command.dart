import 'abstract_command.dart';

class AddCounterCommand extends AbstractCommand {
  Future<void> execute([int value]) async {
    controller.model.addCounter(value);
    // controller.model.event(CounterEvent.add(value));
    controller.update();
  }
}
