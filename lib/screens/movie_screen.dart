import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/models/movie_models.dart';

import '../widgets/movie_player.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground(context, movie),
          _buildMovieInrofrmating(context),
          _buildActions(context)
        ],
      ),
    );
  }

  List<Widget> _buildBackground(BuildContext context, Movie movie) {
    Size size = MediaQuery.of(context).size;

    return [
      Container(height: double.infinity, color: Color(0XFF000B49)),
      Hero(
        tag: movie.imagePath,
        child: Image.network(
          movie.imagePath,
          width: double.infinity,
          height: size.height * 0.5,
          fit: BoxFit.cover,
        ),
      ),
      Positioned.fill(
        child: DecoratedBox(
          decoration: (BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Color(0XFF000B49)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.5]),
          )),
        ),
      ),
    ];
  }

  Widget _buildMovieInrofrmating(context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 150,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              movie.name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${movie.year} | ${movie.category} | ${movie.duration.inHours}h ${movie.duration.inMinutes}m",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            RatingBar.builder(
                initialRating: 3.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: size.height / 30,
                unratedColor: Colors.white,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                },
                onRatingUpdate: (rating) {}),
            SizedBox(
              height: 20,
            ),
            Text(
              "lab lab lab lab lab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lablab lab lab lab",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(height: 1.75, color: Colors.white),
              maxLines: 8,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 10,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Color(0xFFFF7272),
                    fixedSize: Size(size.width * 0.42, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                        children: [
                      TextSpan(
                        text: "Add to",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " WatchList")
                    ]))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MoviePlayer(movie: movie)));
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.42, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                        children: [
                      TextSpan(
                        text: "Start",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: "watching",
                          style: TextStyle(color: Colors.black))
                    ]))),
          ],
        ),
      ),
    );
  }
}
