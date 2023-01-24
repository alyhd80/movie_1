import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_list_item.dart';

import '../models/movie_models.dart';
import 'movie_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = Movie.movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipPath(
          clipper: _CustomClipper(),
          child: Container(
            height: size.height * 0.2,
            width: size.width,
            color: Color(0xFF000B49),
            child: Center(
              child: Text(
                "Explor",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: "Featured ",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.grey)),
                    TextSpan(
                        text: "Movies",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.grey)),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (final movie in movies)
                GestureDetector(
                  onTap: ()=>        Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieScreen(movie: movie,)))
                  ,
                  child: MovieListItem(
                      imageUrl: movie.imagePath,
                      name: movie.name,
                      information:
                          "${movie.year} | ${movie.category} | ${movie.duration.inHours}h | ${movie.duration.inMicroseconds.remainder(60)}m"),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
