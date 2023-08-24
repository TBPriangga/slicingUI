import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

void main() async {
  await initialize();

  Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: "TBPriangga",
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const AppListView(),
          builder: (context, child) =>
              DebugView(context: context, child: child, visible: true),
        );
      },
    );
  }
}
