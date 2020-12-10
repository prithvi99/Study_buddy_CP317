import 'package:flutter/material.dart';
import 'package:study_buddy/drawer.dart';
import 'package:study_buddy/select_topic.dart';

class selectSubject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Subject'),
        backgroundColor: Colors.redAccent,
      ),
      drawer: MyDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // builder: (context) => selectTopic(),
                    builder: (context) => selectTopic(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Math',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (context) => selectTopic(),
                      //builder: (context) => getStarted(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Language Arts',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (context) => selectTopic(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Science',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (context) => selectTopic(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Social Studies',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      //builder: (context) => selectTopic(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'French',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   margin: EdgeInsets.only(left: 20, right: 20),
            //   child: Text("Math", style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

// Center(
// child: InkWell(
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => selectTopic(),
// ),
// );
// },
// child: Container(
// width: MediaQuery.of(context).size.width * 0.8,
// height: 50.0,
// decoration: BoxDecoration(color: Colors.redAccent),
// child: Text(
// 'Math',
// textAlign: TextAlign.center,
// ),
// ),
// ),
// ),

// InkWell(
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => selectTopic(),
// ),
// );
// },
// child: Container(
// width: MediaQuery.of(context).size.width * 0.8,
// height: 50.0,
// decoration: BoxDecoration(color: Colors.redAccent),
// child: Text(
// 'Math',
// textAlign: TextAlign.center,
// ),
// ),
// ),

// ButtonTheme(
// minWidth: MediaQuery.of(context).size.width * 0.8,
// //height: 100.0,
//
// child: RaisedButton(
// onPressed: () {
// Navigation
// },
// color: Colors.redAccent,
// child: Text(
// "Math",
// style: TextStyle(color: Colors.white),
// ),
// ),
// )
