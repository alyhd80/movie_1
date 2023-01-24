
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_models.dart';
import 'package:video_player/video_player.dart';

class MoviePlayer extends StatefulWidget {
  Movie movie;
   MoviePlayer({required this.movie,Key? key}) : super(key: key);

  @override
  State<MoviePlayer> createState() => _MoviePlayerState();
}

class _MoviePlayerState extends State<MoviePlayer> {
  late VideoPlayerController videoPlayerController;
late ChewieController chewieController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoPlayerController=VideoPlayerController.network(widget.movie.videoPath)..initialize().then((value) {
      setState(() {

      });
    });
    chewieController =ChewieController(videoPlayerController: videoPlayerController,aspectRatio: 16/9);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
    body: SafeArea(child: Chewie(controller: chewieController)),);
  }
}
