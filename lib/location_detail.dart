import 'package:flutter/material.dart';

import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start, // top -> down
            crossAxisAlignment: CrossAxisAlignment.stretch, // left -> right
            children: _renderFacts(location)));
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

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();

    // debugPrint('location: $location');
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}
