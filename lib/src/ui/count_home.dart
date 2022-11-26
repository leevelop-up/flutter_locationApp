import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/count_provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        Provider.of<CountProvider>(context).count.toString(),
        style: TextStyle(fontSize: 80),
      ),
    );
  }
}


//git test