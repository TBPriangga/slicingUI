// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/fd_dashbord_view.dart';

class FdDashbordController extends State<FdDashbordView> {
  static late FdDashbordController instance;
  late FdDashbordView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List<Map<String, dynamic>> categories = [
    {"icon": MdiIcons.foodVariant, "label": "All", "value": "All"},
    {
      "icon": MdiIcons.food,
      "label": "Burger",
      "value": "Burger",
    },
    {
      "icon": MdiIcons.foodTurkey,
      "label": "Food",
      "value": "Taco",
    },
    {
      "icon": MdiIcons.foodDrumstick,
      "label": "Chicken",
      "value": "Chicken",
    },
    {
      "icon": MdiIcons.glassCocktail,
      "label": "Drink",
      "value": "Drink",
    }
  ];
  List products = [
    {
      "id": 1,
      "photo": "assets/icon/pizza1.jpg",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 2,
      "photo": "assets/icon/beefburger1.jpg",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 3,
      "photo": "assets/icon/softdrink.jpg",
      "product_name": "Soft Drink",
      "price": 33,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 4,
      "photo": "assets/icon/nasigoreng.jpg",
      "product_name": "Fried Rice",
      "price": 31,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 5,
      "photo": "assets/icon/susu2.jpg",
      "product_name": "Terrano Milk",
      "price": 32,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "id": 6,
      "photo": "assets/icon/friedchicken3.jpg",
      "product_name": "Fried Chicken",
      "price": 49,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
  ];
  var scaffoldKey = GlobalKey<ScaffoldState>();
}
