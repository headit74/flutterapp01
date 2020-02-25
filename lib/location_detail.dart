import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello, World!')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start, // top -> down
            crossAxisAlignment: CrossAxisAlignment.stretch, // left -> right
            children: [
              _section("One!", Colors.red),
              _section("Two!", Colors.green),
              _section("Three!", Colors.blue),
            ]
        )
    );
  }

  // _ -> private method
  Widget _section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title),
    );
  }
}
