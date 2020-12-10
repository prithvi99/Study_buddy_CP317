// import 'package:flutter/material.dart';
// // import "package:study_buddy/misc/apikey.dart";
// // import 'package:study_buddy/misc/mixin.dart';
// // import 'package:study_buddy/misc/popup.dart';
// import 'package:youtube_api/youtube_api.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData.dark(),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage>
//     with ListPopupTap<MyHomePage>, PortraitMode<MyHomePage> {
//   TextEditingController textController;
//   YoutubeAPI _youtubeAPI;
//   List<YT_API> _ytResults;
//   List<VideoItem> videoItem;
//   String videoId;
//
//   @override
//   void initState() {
//     super.initState();
//     textController = TextEditingController();
//     _youtubeAPI = YoutubeAPI(apikey, type: "video", maxResults: 30);
//     _ytResults = [];
//     videoItem = [];
//
//     callAPI("flutter");
//   }
//
//   Future<Null> callAPI(String query, {bool nextPage}) async {
//     if (_ytResults.isNotEmpty) {
//       videoItem.clear();
//     }
//
//     if (nextPage == null) {
//       _ytResults = await _youtubeAPI.search(query);
//     }
//     if (nextPage == true)
//       _ytResults = await _youtubeAPI.nextPage();
//     else
//       _ytResults = await _youtubeAPI.prevPage();
//
//     for (YT_API result in _ytResults) {
//       VideoItem item = VideoItem(
//         api: result,
//         listPopupTap: this,
//       );
//       videoItem.add(item);
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("YouTube Example"),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: ButtonBar(
//           alignment: MainAxisAlignment.center,
//           children: <Widget>[
//             IconButton(
//                 color: Colors.red,
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () async {
//                   await callAPI("", nextPage: false);
//                 }),
//             IconButton(
//               color: Colors.blueGrey,
//               icon: Icon(
//                 Icons.arrow_forward,
//               ),
//               onPressed: () async {
//                 await callAPI("", nextPage: true);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   controller: textController,
//                   onFieldSubmitted: (String q) async {
//                     await callAPI(q);
//
//                     textController.clear();
//                   },
//                 ),
//                 Flexible(
//                   child: ListView.builder(
//                     padding: EdgeInsets.all(8.0),
//                     itemCount: videoItem.length,
//                     itemBuilder: (_, int index) => videoItem[index],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   void onTap(YT_API apiItem, BuildContext context) {
//     setState(() {
//       videoId = apiItem.id;
//     });
//
//     Navigator.of(context).push(PopupVideoPlayerRoute(
//       child: PopupVideoPlayer(
//         videoId: videoId,
//       ),
//     ));
//   }
// }
//
// class VideoItem extends StatelessWidget {
//   final YT_API api;
//   final ListPopupTap listPopupTap;
//
//   const VideoItem({Key key, this.api, this.listPopupTap}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Card(
//         child: ListTile(
//           leading: Image.network(api.thumbnail["high"]["url"]),
//           title: Text(api.title),
//           subtitle: Text(api.channelTitle),
//           onTap: () {
//             listPopupTap.onTap(api, context);
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:study_buddy/drawer.dart';
import 'package:study_buddy/screens/get_started.dart';
import 'package:study_buddy/screens/home_screen.dart';

class selectTopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Topic'),
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
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Number Sense',
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
                    //builder: (context) => HomeScreen(),
                    builder: (context) => welcome(),
                  ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Measurement',
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
                      //builder: (context) => HomeScreen(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Geometry',
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
                      //builder: (context) => HomeScreen(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Algebra',
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
                      //builder: (context) => HomeScreen(),
                      ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'Probablity',
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
