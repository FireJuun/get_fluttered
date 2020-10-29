import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    );
  }
}
