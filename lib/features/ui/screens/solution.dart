// solution_page.dart
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../models/treatments.dart';
// Import the treatment file

class SolutionPage extends StatelessWidget {
  final String result;

  SolutionPage(this.result);

  @override
  Widget build(BuildContext context) {
    Plant? plant;
    for (var p in Plant.plantList) {
      if (p.diseaseName == result) {
        plant = p;
        break;
      }
    }

    if (plant == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Solution Page"),
        ),
        body: Center(
          // child: Text("No solution found for $result"),
          child: Text("No disease found "),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Solution Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Result: $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Organic Treatment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              plant.organiccontrol,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Chemical Treatment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              plant.chemicalControl,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
