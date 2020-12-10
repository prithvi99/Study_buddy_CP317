import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/home_view.dart';
import 'package:study_buddy/signup.dart';
import 'package:study_buddy/variables.dart';

import 'flutterfire.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool isSigned = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        setState(() {
          isSigned = true;
        });
      } else {
        setState(() {
          isSigned = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSigned == false ? Login() : selectGrade(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
                "Welcome to Study Buddy",
                style: myStyle(25, Colors.black, FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Login",
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
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextField(
                  controller: passwordcontroller,
                  obscureText: true,
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
                // onTap: () {
                //   try {
                //     FirebaseAuth.instance.signInWithEmailAndPassword(
                //         email: emailcontroller.text,
                //         password: passwordcontroller.text);
                //   } catch (e) {
                //     SnackBar snackBar = SnackBar(
                //       content: Text("Try again, email or password are wrong"),
                //     );
                //     Scaffold.of(context).showSnackBar(snackBar);
                //   }
                // },
                onTap: () async {
                  bool shouldNavigate = await signIn(
                      emailcontroller.text, passwordcontroller.text);
                  if (shouldNavigate) {
                    //nothing
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => selectGrade(),
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
                      "Login",
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
                    "Don't have an account?",
                    style: myStyle(20),
                  ),
                  SizedBox(width: 10.0),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp())),
                    child: Text(
                      "Register",
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
