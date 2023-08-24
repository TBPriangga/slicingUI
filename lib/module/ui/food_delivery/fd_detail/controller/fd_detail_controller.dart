import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fd_detail_view.dart';

class FdDetailController extends State<FdDetailView> {
  static late FdDetailController instance;
  late FdDetailView view;

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
