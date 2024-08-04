// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:facebook_clone/core/constants/constants.dart';
import 'package:facebook_clone/features/ui/screens/scanner.dart';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SelectFruitPage extends StatelessWidget {
  const SelectFruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Select Fruit to Detect Disease',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                // ignore: prefer_const_constructors
                                child: ScannerPage(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Constants.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/fruit-three.png',
                              width: 100,
                              height: 150,
                            ),
                            SizedBox(height: 16),
                            Text(
                              ' Orange',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                // ignore: prefer_const_constructors
                                child: ScannerPage(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Constants.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/fruit-sevena.png',
                              width: 100,
                              height: 150,
                            ),
                            SizedBox(height: 16),
                            Text(
                              ' Apple',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                // ignore: prefer_const_constructors
                                child: ScannerPage(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Constants.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/fruit-grape12.png',
                              width: 100,
                              height: 150,
                            ),
                            SizedBox(height: 16),
                            Text(
                              ' Grape',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
