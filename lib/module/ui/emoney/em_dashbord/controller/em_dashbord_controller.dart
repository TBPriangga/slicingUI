import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/em_dashbord_view.dart';

class EmDashbordController extends State<EmDashbordView> {
  static late EmDashbordController instance;
  late EmDashbordView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
