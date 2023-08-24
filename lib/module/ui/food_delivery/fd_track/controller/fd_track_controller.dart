import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fd_track_view.dart';

class FdTrackController extends State<FdTrackView> {
  static late FdTrackController instance;
  late FdTrackView view;

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
