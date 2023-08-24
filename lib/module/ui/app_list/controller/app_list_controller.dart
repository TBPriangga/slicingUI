// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/theme/theme_emoney.dart';
import 'package:hyper_ui/shared/theme/theme_food_delivery.dart';
import 'package:hyper_ui/shared/theme/theme_travel.dart';
import '../view/app_list_view.dart';

class AppListController extends State<AppListView> {
  static late AppListController instance;
  late AppListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List apps = [
    {
      "label": "Food Delivery",
      "icon": Icons.food_bank,
      "page": FdMainNavigationView(),
      "theme": getFoodDeliveryTheme(),
    },
    {
      "label": "Emoney",
      "icon": Icons.wallet,
      "page": const EmDashbordView(),
      "theme": getEmoneyTheme(),
    },
    {
      "label": "Travel",
      "icon": Icons.flight,
      "page": const TvDashboardView(),
      "theme": getTravelTheme(),
    }
  ];
}
