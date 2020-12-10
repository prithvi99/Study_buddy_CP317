//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:study_buddy/navigation.dart';

// class getStarted extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: welcome(),
//         ),
//       ),
//     );
//   }
// }

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  //int _pageState = 0;

  var _backGroundColor = Colors.white;
  var _headingColor = Color(0xFFB40284A);
  @override
  Widget build(BuildContext context) {
    // switch (_pageState) {
    //   case 0:
    //     _backGroundColor = Colors.white;
    //     break;
    //   case 1:
    //     _backGroundColor = Colors.redAccent;
    //     break;
    //   case 2:
    //     _backGroundColor = Colors.redAccent;
    // }

    return Container(
      color: _backGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 100,
                  ),
                  child: Text(
                    "Knowledge is Power",
                    style: TextStyle(
                      color: Color(0xFFB40284A),
                      fontSize: 28.0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "We make learning easy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFB40284A),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Center(
                child: Image.asset(
              "assets/images/splash_bg.png",
              width: 250,
            )),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                // _pageState = 1;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(32.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFB40284A),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
