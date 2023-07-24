import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pagea_controller.dart';

class PageaPage extends StatefulWidget {
  @override
  _PageaPageState createState() => _PageaPageState();
}

class _PageaPageState extends ModularState<PageaPage, PageaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page A')),
      body: ColorfulSafeArea(
          color: Colors.white.withOpacity(0.7),
          overflowRules: OverflowRules.all(true),
          child: Center(child: Text('Teste PageTransition'))),
    );
  }
}
