import 'package:flutter/material.dart';
import 'package:lesson01/location_detail.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;

  LocationList(this._locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Locations",
          style: Styles.navbarTitle,
        ),
      ),
      body: ListView.builder(
        itemCount: this._locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = this._locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(this._locations[index]),
      title: _itemTitle(this._locations[index]),
      onTap: () => _navigationToLocationDetail(context, this._locations[index]),
    );
  }

  void _navigationToLocationDetail(BuildContext context, Location location) {
    // print('>>>>>>>> ${this._locations[index].name}');
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationDetail(location)));
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      ' ${location.name}',
      style: Styles.textDefault,
    );
  }
}
