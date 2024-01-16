import 'package:flutter_test/flutter_test.dart';
import 'package:google_places_flutter/google_places_flutter.dart';

void main() {
  test('buildUrl', () {
    expect(
      buildUrl(
        "Warung",
        apiKey: "apiKey",
        countries: ["id"],
        types: ["cafe"],
        locationBounds: RectangleLocationBounds(
          north: "north",
          east: "east",
          south: "south",
          west: "west",
        ),
      ),
      "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Warung&key=apiKey&language=en&strictbounds=true&locationrestriction=rectangle:south,west|north,east&types=cafe&components=country:id",
    );
    expect(
      buildUrl(
        "Warung",
        apiKey: "apiKey",
        countries: ["id", "se"],
      ),
      "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=Warung&key=apiKey&language=en&components=country:id|country:se",
    );
  });
}
