import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/tv_dashboard_controller.dart';

class TvDashboardView extends StatefulWidget {
  const TvDashboardView({Key? key}) : super(key: key);

  Widget build(context, TvDashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TvDashboard"),
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
  State<TvDashboardView> createState() => TvDashboardController();
}
