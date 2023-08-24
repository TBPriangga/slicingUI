import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_track_controller.dart';

class FdTrackView extends StatefulWidget {
  const FdTrackView({Key? key}) : super(key: key);

  Widget build(context, FdTrackController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FdTrack"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FdTrackView> createState() => FdTrackController();
}
