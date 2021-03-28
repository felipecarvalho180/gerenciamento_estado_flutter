import 'package:flutter/material.dart';
import 'package:gerencia_estado/src/bloc/bloc_page.dart';
import 'package:gerencia_estado/src/redux/app_store.dart';
import 'package:gerencia_estado/src/redux/redux_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/bloc',
      routes: {
        '/redux': (context) => ReduxPage(),
        '/bloc': (context) => BlocPage()
      },
    );
  }
}
