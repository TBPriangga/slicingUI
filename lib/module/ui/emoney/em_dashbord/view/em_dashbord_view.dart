import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/em_dashbord_controller.dart';

class EmDashbordView extends StatefulWidget {
  const EmDashbordView({Key? key}) : super(key: key);

  Widget build(context, EmDashbordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EmDashbord"),
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
  State<EmDashbordView> createState() => EmDashbordController();
}
