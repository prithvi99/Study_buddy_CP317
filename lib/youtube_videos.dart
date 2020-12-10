// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:study_buddy/video_screen.dart';
// import 'package:timeago/timeago.dart' as timeago;
// import 'package:youtube_api/youtube_api.dart';
//
// // import './video.dart';
// // import '../../generated/l10n.dart';
//
// class VideosPage extends StatefulWidget {
//   @override
//   _VideosPageState createState() => _VideosPageState();
// }
//
// class _VideosPageState extends State<VideosPage>
//     with AutomaticKeepAliveClientMixin<VideosPage> {
//   static String key = "AIzaSy...__xxxxxxxx_**********";
//   bool recordsLoaded = false;
//   static int maxResults = 25;
//
// //  static String videosType = "channel";
//   static String videosType = "videos";
// // static String videosType = "playlist";
//
//   YoutubeAPI ytApi = new YoutubeAPI(
//     key,
//     maxResults: maxResults,
//     type: videosType,
//   );
//   List<YT_API> ytResult = [];
//
//   callAPI() async {
//     // print('UI callled');
// //    CircularProgressIndicator();
//     String query = "FLUTTER";
//     ytResult = await ytApi.search(query);
//     setState(() {
// //      print('UI Updated 2');
//       recordsLoaded = true;
//     });
//   }
//
//   @override
//   void initState() {
// //    _loadList();
// //    super.initState();
//     super.initState();
//     callAPI();
// //    print('hello');
//     recordsLoaded = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
// //    var locale = Localizations.localeOf(context).languageCode;
//     timeago.setLocaleMessages('fr', timeago.FrMessages());
//     timeago.setLocaleMessages('en', timeago.EnMessages());
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(S.of(context).titleVideos),
//         elevation: 0,
//       ),
//       body: Container(
//           child: recordsLoaded
//               ? ListView.builder(
//                   itemCount: ytResult.length,
//                   itemBuilder: (_, int index) => listItem(index))
//               : Center(
//                   child: Container(
//                     child: CircularProgressIndicator(),
//                   ),
//                 )),
//     );
//   }
//
//   Widget listItem(index) {
//     var publishedAt =
//         timeago.format(DateTime.parse(ytResult[index].publishedAt));
//     return new Card(
//       child: new Container(
//         margin: EdgeInsets.symmetric(vertical: 7.0),
//         padding: EdgeInsets.all(6.0),
//         child: new Row(
//           children: <Widget>[
//             new InkWell(
//               child: new CachedNetworkImage(
//                 imageUrl: ytResult[index].thumbnail['default']['url'],
//                 width: 90,
//                 height: 90,
//               ),
//               onTap: () {
//                 print(ytResult[index].url);
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => VideoScreen(
//                         title: ytResult[index].title, url: ytResult[index].id),
//                   ),
//                 );
//               },
//             ),
//             new Padding(padding: EdgeInsets.only(right: 10.0)),
//             new Expanded(
//                 child: new Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                   new InkWell(
//                     child: new Text(
//                       ytResult[index].title,
//                       softWrap: true,
//                       style: TextStyle(fontSize: 16.0),
//                     ),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => YouTubeVideoPlayer(
//                               title: ytResult[index].title,
//                               url: ytResult[index].id),
//                         ),
//                       );
//                     },
//                   ),
//                   new Padding(padding: EdgeInsets.only(bottom: 1.5)),
//                   new Text(
//                     ytResult[index].channelTitle,
//                     softWrap: true,
//                     style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
//                   ),
//                   new Padding(padding: EdgeInsets.only(bottom: 3.0)),
//                   new Text(
//                     publishedAt,
//                     softWrap: true,
//                     style: TextStyle(fontSize: 12.0, color: Colors.grey),
//                   ),
//                 ]))
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   // TODO: implement wantKeepAlive
//   bool get wantKeepAlive => throw UnimplementedError();
// }

// import 'package:flutter/material.dart';
// import 'package:youtube_api/youtube_api.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DemoApp(),
//     );
//   }
// }
//
// class DemoApp extends StatefulWidget {
//   @override
//   _DemoAppState createState() => _DemoAppState();
// }
//
// class _DemoAppState extends State<DemoApp> {
//   static String key = "YOUR-API-KEY";
//
//   YoutubeAPI ytApi = YoutubeAPI(key);
//   List<YT_API> ytResult = [];
//
//   callAPI() async {
//     String query = "Java";
//     ytResult = await ytApi.search(query);
//     ytResult = await ytApi.nextPage();
//     setState(() {});
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     callAPI();
//     print('hello');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Youtube API'),
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemCount: ytResult.length,
//           itemBuilder: (_, int index) => listItem(index),
//         ),
//       ),
//     );
//   }
//
//   Widget listItem(index) {
//     return Card(
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical: 7.0),
//         padding: EdgeInsets.all(12.0),
//         child: Row(
//           children: <Widget>[
//             Image.network(
//               ytResult[index].thumbnail['default']
//                   ['https://www.youtube.com/watch?v=9vzd289Eedk'],
//             ),
//             Padding(padding: EdgeInsets.only(right: 20.0)),
//             Expanded(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                   Text(
//                     ytResult[index].title,
//                     softWrap: true,
//                     style: TextStyle(fontSize: 18.0),
//                   ),
//                   Padding(padding: EdgeInsets.only(bottom: 1.5)),
//                   Text(
//                     ytResult[index].channelTitle,
//                     softWrap: true,
//                   ),
//                   Padding(padding: EdgeInsets.only(bottom: 3.0)),
//                   Text(
//                     ytResult[index].url,
//                     softWrap: true,
//                   ),
//                 ]))
//           ],
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// //
// // import 'drawer.dart';
// // import 'models/channel_model.dart';
// //
// // class Youtube extends StatefulWidget {
// //   @override
// //   _YoutubeState createState() => _YoutubeState();
// // }
// //
// // class _YoutubeState extends State<Youtube> {
// //   @override
// //   Widget build(BuildContext context) {
// //     Channel _channel;
// //     bool _isLoading = false;
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('YouTube Videos'),
// //         backgroundColor: Colors.redAccent,
// //       ),
// //       drawer: MyDrawer(),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:study_buddy/models/channel_model.dart';
// import 'package:study_buddy/models/video_model.dart';
// import 'package:study_buddy/screens/video_screen.dart';
// import 'package:study_buddy/services/api_service.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   Channel _channel;
//   bool _isLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _initChannel();
//   }
//
//   _initChannel() async {
//     Channel channel = await APIService.instance
//         .fetchChannel(channelId: 'UC6Dy0rQ6zDnQuHQ1EeErGUA');
//     setState(() {
//       _channel = channel;
//     });
//   }
//
//   _buildProfileInfo() {
//     return Container(
//       margin: EdgeInsets.all(20.0),
//       padding: EdgeInsets.all(20.0),
//       height: 100.0,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             offset: Offset(0, 1),
//             blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: Row(
//         children: <Widget>[
//           CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 35.0,
//             backgroundImage: NetworkImage(_channel.profilePictureUrl),
//           ),
//           SizedBox(width: 12.0),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   _channel.title,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(
//                   '${_channel.subscriberCount} subscribers',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: 16.0,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   _buildVideo(Video video) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => VideoScreen(id: video.id),
//         ),
//       ),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//         padding: EdgeInsets.all(10.0),
//         height: 140.0,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(0, 1),
//               blurRadius: 6.0,
//             ),
//           ],
//         ),
//         child: Row(
//           children: <Widget>[
//             Image(
//               width: 150.0,
//               image: NetworkImage(video.thumbnailUrl),
//             ),
//             SizedBox(width: 10.0),
//             Expanded(
//               child: Text(
//                 video.title,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18.0,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _loadMoreVideos() async {
//     _isLoading = true;
//     List<Video> moreVideos = await APIService.instance
//         .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
//     List<Video> allVideos = _channel.videos..addAll(moreVideos);
//     setState(() {
//       _channel.videos = allVideos;
//     });
//     _isLoading = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('YouTube Channel'),
//       ),
//       body: _channel != null
//           ? NotificationListener<ScrollNotification>(
//               onNotification: (ScrollNotification scrollDetails) {
//                 if (!_isLoading &&
//                     _channel.videos.length != int.parse(_channel.videoCount) &&
//                     scrollDetails.metrics.pixels ==
//                         scrollDetails.metrics.maxScrollExtent) {
//                   _loadMoreVideos();
//                 }
//                 return false;
//               },
//               child: ListView.builder(
//                 itemCount: 1 + _channel.videos.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   if (index == 0) {
//                     return _buildProfileInfo();
//                   }
//                   Video video = _channel.videos[index - 1];
//                   return _buildVideo(video);
//                 },
//               ),
//             )
//           : Center(
//               child: CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation<Color>(
//                   Theme.of(context).primaryColor, // Red
//                 ),
//               ),
//             ),
//     );
//   }
// }
