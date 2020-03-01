import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'models/location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          location.name,
          style: Styles.navbarTitle,
        )),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start, // top -> down
            crossAxisAlignment: CrossAxisAlignment.stretch, // left -> right
            children: _renderBody(context, location)));
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

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();

    // debugPrint('location: $location');
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 15.0),
      child: Text(title, textAlign: TextAlign.left, style: Styles.headerLarge),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(
        text,
        style: Styles.textDefault,
      ),
    );
  }

  Widget _bannerImage(String url, double height) {
    //print(url);
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
      /*Stack(
        children: <Widget>[
          Center(child: CircularProgressIndicator()),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: url,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),*/
    );
  }
}
