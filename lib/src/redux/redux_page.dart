import 'package:flutter/material.dart';
import 'package:gerencia_estado/src/redux/app_store.dart';

class ReduxPage extends StatefulWidget {
  @override
  _ReduxPageState createState() => _ReduxPageState();
}

class _ReduxPageState extends State<ReduxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            AnimatedBuilder(
              animation: appStore,
              builder: (context, child) {
                return Text(
                  '${appStore.state.value}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appStore.dispatcher(AppAction.increment);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
