import 'package:flutter/material.dart';
import 'package:exui/exui.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'IVS Projekt 2 Kalkulačka';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          leading: "Menu Hamburger".text(),
          title: appTitle.text(),
        ),
        body: [
          [
            "Syntax highlighted input field".text().expanded5,
            const VerticalDivider(),
            "Submit Button".text().expanded1,
          ].row().container(
            height: 150,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
          [
            "Result Bar".text().expanded5,
            const VerticalDivider(),
            "Convert button from decimal to fractional".text().expanded1,
          ].row().container(
            height: 50,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
          [
            "History".text().expanded1,
            const VerticalDivider(),
            "Function pad".text().expanded1,
          ].row().container(
            height: 350,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          ),
        ].column(spacing: 10.0),
      ),
    );
  }
}
