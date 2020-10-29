import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_fluttered/controllers/commands/commands.dart';
import 'package:get_fluttered/controllers/counter_controller.dart';

import 'counting_column.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            child: Icon(Icons.exposure_minus_1),
            onPressed: () => RemoveCounterCommand().execute(),
          ),
          FloatingActionButton(
            child: Icon(Icons.plus_one),
            onPressed: () => AddCounterCommand().execute(),
          ),
        ],
      ),
    );
  }
}
