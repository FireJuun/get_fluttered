import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_fluttered/controllers/commands/commands.dart';
import 'package:get_fluttered/models/data/counter.dart';

class CountingColumn extends StatelessWidget {
  final Counter item;
  const CountingColumn({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () => CountUpCommand().execute(item)),
            Text(
              item.counter.toString(),
              style: TextStyle(fontSize: 48),
            ),
            FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () => CountDownCommand().execute(item))
          ],
        ));
  }
}
