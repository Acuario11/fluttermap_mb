import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
      home: MyHomePage( ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
              options: MapOptions(
              center: LatLng(-6.472352016305042, -76.39615172024821),
              zoom: 14.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate: "https://api.mapbox.com/styles/v1/madaichuco/ckun3vc1h6i1519mwqgkew02m/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFkYWljaHVjbyIsImEiOiJja3VlYjYyYTgxajB3MzJuenU0czg2dmp6In0.QcOiFdldgkrWBpz7eEOhBw",
                additionalOptions: {
                  'accessToken':'pk.eyJ1IjoibWFkYWljaHVjbyIsImEiOiJja3VlYjYyYTgxajB3MzJuenU0czg2dmp6In0.QcOiFdldgkrWBpz7eEOhBw',
                  'id':'mapbox.mapbox-streets-v8'
                }
              ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 30.0,
                  height: 50.0,
                  point: LatLng(-6.472352016305042, -76.39615172024821),
                  builder: (ctx) =>
                  Container(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }

}