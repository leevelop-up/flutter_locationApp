import 'package:flutter/material.dart';
import 'package:location_app/src/provider/count_provider.dart';
import './src/ui/count_home.dart';
import 'package:provider/provider.dart';
import './src/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) {
          return CountProvider();
        },
        child: Home(),
      ),
    );
  }
}
