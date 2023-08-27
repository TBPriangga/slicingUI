// ignore_for_file: unnecessary_import

import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_track_controller.dart';

class FdTrackView extends StatefulWidget {
  FdTrackView({Key? key}) : super(key: key);

  Widget build(context, FdTrackController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Order Track"),
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: Builder(
              builder: (context) {
                List<Marker> allMarkers = [
                  Marker(
                    point: LatLng(
                      -6.1754234,
                      106.827224,
                    ),
                    builder: (context) => Icon(
                      Icons.pin_drop,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                ];
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: FlutterMap(
                    options: MapOptions(
                      center: LatLng(
                        -6.222771, // Koordinat Jalan Pintu Satu Senayan
                        106.803662, // Koordinat Jalan Pintu Satu Senayan
                      ),
                      zoom: 16,
                      interactiveFlags:
                          InteractiveFlag.all - InteractiveFlag.rotate,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName:
                            'dev.fleaflet.flutter_map.example',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            width: 80.0,
                            height: 80.0,
                            point: LatLng(
                              -6.222771, // Koordinat Jalan Pintu Satu Senayan
                              106.803662, // Koordinat Jalan Pintu Satu Senayan
                            ),
                            builder: (ctx) => Container(
                              child: Icon(
                                Icons.location_pin,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/8/8b/Greesel_JKT48.png",
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Greesel Adhalia",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "B 4848 JKT",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffff4e01),
                      child: Icon(
                        MdiIcons.chat,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffff4e01),
                      child: Icon(
                        MdiIcons.phone,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffe2d2c7),
                      child: Icon(
                        MdiIcons.circleMedium,
                        color: Color(0xffff4e01),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "On the way",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "25 Mins",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffff4e01),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "Jl.Jend Sudirman Pintu Satu Senayan",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 42,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffff4e01),
                  ),
                  onPressed: () => Get.to(FdTrackView()),
                  child: const Text("Order Received"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FdTrackView> createState() => FdTrackController();
}
