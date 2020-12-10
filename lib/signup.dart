import 'package:flutter/material.dart';
import 'package:study_buddy/flutterfire.dart';
import 'package:study_buddy/navigation.dart';
import 'package:study_buddy/policy.dart';

import 'variables.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();

  // registeruser() {
  //   FirebaseAuth.instance
  //       .signInWithEmailAndPassword(
  //           email: emailcontroller.text, password: passwordcontroller.text)
  //       .then((signeduser) {
  //     usercollection.doc(signeduser.user.uid).set({
  //       'username': usernamecontroller.text,
  //       'password': passwordcontroller.text,
  //       'email': emailcontroller.text,
  //       'uid': signeduser.user.uid,
  //     });
  //   });
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red[200],
      body: CustomPaint(
        painter: BluePainter(),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Come study with us!",
                style: myStyle(25, Colors.black, FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Signup",
                style: myStyle(25, Colors.black, FontWeight.w600),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    labelStyle: myStyle(20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   margin: EdgeInsets.only(left: 20.0, right: 20.0),
              //   child: TextField(
              //     controller: usernamecontroller,
              //     decoration: InputDecoration(
              //       fillColor: Colors.white,
              //       filled: true,
              //       labelText: 'Username',
              //       labelStyle: myStyle(20),
              //       prefixIcon: Icon(Icons.person),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(20.0),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: 'Password',
                    labelStyle: myStyle(20),
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                //onTap: () => registeruser(),
                onTap: () async {
                  bool shouldNavigate = await signup(
                      emailcontroller.text, passwordcontroller.text);
                  if (shouldNavigate) {
                    //nothing
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                        //builder: (context) => registeruser(),
                      ),
                    );
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: myStyle(20, Colors.white, FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I Agree to ",
                    style: myStyle(20),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TermsOfPolicy())),
                    child: Text(
                      "Terms of Policy",
                      style: myStyle(20, Colors.purpleAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    //paint.color = Colors.red.shade700;
    paint.color = Colors.red[400];
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    // Start paint from 20% height to the left
    ovalPath.moveTo(0, height * 0.2);

    // paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        width * 0.45, height * 0.25, width * 0.51, height * 0.5);

    // Paint a curve from current position to bottom left of screen at width * 0.1
    ovalPath.quadraticBezierTo(width * 0.58, height * 0.8, width * 0.1, height);

    // draw remaining line to bottom left side
    ovalPath.lineTo(0, height);

    // Close line to reset it back
    ovalPath.close();

    //paint.color = Colors.red.shade600;
    paint.color = Colors.red[300];
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
