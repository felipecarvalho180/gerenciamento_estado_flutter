import 'package:flutter/material.dart';
import 'package:gerencia_estado/src/rx_notifier/app_store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxNotifierPage extends StatefulWidget {
  @override
  _RxNotifierPageState createState() => _RxNotifierPageState();
}

class _RxNotifierPageState extends State<RxNotifierPage> {
  final appStore = AppStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxNotifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            RxBuilder(builder: (_) {
              return Text(
                '${appStore.counter.value.toString()}',
                style: Theme.of(context).textTheme.headline4,
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appStore.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
