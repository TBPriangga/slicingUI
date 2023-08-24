import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_detail_controller.dart';

class FdDetailView extends StatefulWidget {
  const FdDetailView({Key? key}) : super(key: key);

  Widget build(context, FdDetailController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FdDetail"),
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
  State<FdDetailView> createState() => FdDetailController();
}
