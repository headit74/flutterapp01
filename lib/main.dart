import 'package:flutter/material.dart';
import 'models/location.dart';
import './location_detail.dart';
import 'mocks/mock_location.dart';
import 'location_list.dart';

void main() {
//  final Location mockLocation = MockLocation.FetchAny();
  final List<Location> locations = MockLocation.FetchMany();
  return runApp(MaterialApp(
    home: LocationList(locations),
  ));
}
