import 'package:flutter/material.dart';
import './provider/count_provider.dart';
import './ui/count_home.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  CountProvider? _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("providerß")),
      body: CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              _countProvider.add();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              _countProvider.remove();
            },
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
