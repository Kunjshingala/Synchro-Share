import 'package:flutter/material.dart';

import '../../commonView/common_app_bar.dart';
import '../../main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: localizations.appName,
      ),
      body: const Column(children: []),
    );
  }
}
