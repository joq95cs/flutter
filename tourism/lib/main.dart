import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';
import 'location_list.dart';

void main() {
  //final Location mockLocation = MockLocation.fetchAny();
  final mockLocations = MockLocation.fetchAll();
  return runApp(MaterialApp(
    //home: LocationDetail(mockLocation),
    home: LocationList(mockLocations),
  ));
}
