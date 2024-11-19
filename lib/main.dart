import 'package:currency_converter_app/currency_converter_cupertino_page.dart';
import 'package:currency_converter_app/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MyCupertinoApp());
}



//Types of Widgets
//1.statelessWiget : after making stateless widget , it is immutable
//2.statefulWidget
//3.InheritedWidget

// State 

// 1. Material Desgin : Google
// 2. Cupertino  : Apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //scaffold : base set up for building UI
  //buildContext help flutter to find where this wiget placed on widgetTree
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : CurrencyConverterMaterialPage(),
    );
  }
}


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home : CurrencyConverterCupertinoPage()
    );
  }
}