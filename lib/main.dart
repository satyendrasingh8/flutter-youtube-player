import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

//import 'video_list.dart';

void main() {
  runApp(YoutubePlayerDemoApp());
}

class YoutubePlayerDemoApp extends StatefulWidget {
  @override
  _YoutubePlayerDemoAppState createState() => _YoutubePlayerDemoAppState();
}

class _YoutubePlayerDemoAppState extends State<YoutubePlayerDemoApp> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('youtube app'),
        ),
        body: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          //videoProgressIndicatorColor: Colors.amber,
          //progressColors: ProgressColors(
          //  playedColor: Colors.amber,
          // handleColor: Colors.amberAccent,
          // ),
          //onReady () {
          //  _controller.addListener(listener);
          //},
        ),
      ),
    );
  }
}
