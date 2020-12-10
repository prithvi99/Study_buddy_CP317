import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_buddy/select_subject.dart';

import 'drawer.dart';

class selectGrade extends StatefulWidget {
  @override
  _selectGradeState createState() => _selectGradeState();
}

class _selectGradeState extends State<selectGrade> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Grade"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: MyDrawer(),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => selectSubject(),
                  ),
                );
              },
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(
                      fontSize: 74,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "2",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "4",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "5",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "6",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "7",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "8",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "9",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "10",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "11",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.all(10.0),
            elevation: 10,
            child: Center(
              child: Text(
                "12",
                style: TextStyle(
                    fontSize: 74,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// body: Container(
// decoration: BoxDecoration(
// color: Colors.red,
// ),
// width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height,
// child: FlatButton(
// child: Text('Logout'),
// onPressed: () {
// auth.signOut();
// Navigator.pushReplacement(
// context,
// MaterialPageRoute(
// builder: (context) => Login(),
// ),
// );
// },
// ),
// ),
