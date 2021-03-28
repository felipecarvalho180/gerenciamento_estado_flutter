import 'package:flutter/material.dart';
import 'package:gerencia_estado/src/bloc/app_bloc.dart';
import 'package:gerencia_estado/src/redux/app_store.dart';

class BlocPage extends StatefulWidget {
  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  final appBloc = AppBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: appBloc.stream,
              builder: (context, child) {
                return Text(
                  '${appBloc.state.toString()}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appBloc.add(AppEvent.increment);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
