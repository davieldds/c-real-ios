import 'package:flutter/material.dart';

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
          leading: Text("Menu Hamburger"),
          title: const Text(appTitle),
        ),
        body: Column(
          spacing: 10.0,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Text("Syntax highlighted input field"),
                  ),
                  VerticalDivider(),
                  Expanded(child: Text("Submit Button")),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Expanded(flex: 5, child: Text("Result Bar")),
                  VerticalDivider(),
                  Expanded(
                    child: Text("Convert button from decimal to fractional"),
                  ),
                ],
              ),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Expanded(child: Text("History")),
                  VerticalDivider(),
                  Expanded(child: Text("Function pad")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
