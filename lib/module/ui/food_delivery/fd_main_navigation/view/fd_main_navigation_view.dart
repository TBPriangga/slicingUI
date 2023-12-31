// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/fd_main_navigation_controller.dart';

class FdMainNavigationView extends StatefulWidget {
  FdMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, FdMainNavigationController controller) {
    controller.view = this;

    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */
    Widget getNavigationItem(IconData icon, int index) {
      return Expanded(
        child: GestureDetector(
          onTap: () => controller.updateIndex(index),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: controller.selectedIndex == index
                  ? Color(0xffff4e01)
                  : Colors.grey,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Center Button',
        elevation: 2.0,
        backgroundColor: Color(0xffff4e01),
        child: Icon(MdiIcons.cart),
      ),
      body: IndexedStack(
        index: controller.selectedIndex,
        children: [
          FdDashbordView(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 60,
          child: Row(
            children: <Widget>[
              getNavigationItem(Icons.home, 0),
              getNavigationItem(MdiIcons.ticketPercent, 1),
              SizedBox(width: 50),
              getNavigationItem(Icons.favorite, 2),
              getNavigationItem(Icons.person, 2),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FdMainNavigationView> createState() => FdMainNavigationController();
}
