import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 30),
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 620,
                  width: 313,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  height: 610,
                  width: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffB40629)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 5,
                    ),
                    child: Container(
                      height: 615,
                      width: 307,
                      color: Colors.white24,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, right: 280),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffBA0C2F),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 2,
                            offset: Offset(1, 1)),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, right: 280),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color(0xffB40629).withOpacity(0.4),
                            spreadRadius: 2,
                            offset: Offset(1, 1)),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, right: 280),
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 43, right: 280),
                  height: 11,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 47, right: 200),
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, right: 160),
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 42, right: 160),
                  height: 13,
                  decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 230, left: 115),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage('assets/apple.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 125, top: 500),
                  child: Text(
                    'iPhone',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
