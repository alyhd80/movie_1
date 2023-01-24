class Movie {
  final String name;
  final String imagePath;
  final String videoPath;
  final String category;
  final int year;
  final Duration duration;

  const Movie(
      {required this.name,
      required this.imagePath,
      required this.videoPath,
      required this.category,
      required this.year,
      required this.duration});

  static const List<Movie> movie = [
    Movie(
        name: "Mortal Kombat",
        imagePath:
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ96Z0dmMjVXjfJBMyA3WNdQPmAFPbCPUKSvBzl7B4d1DgTG8mPD_qzXYZXWwlfiXJGv0&usqp=CAU",        videoPath:
            "https://hajifirouz6.asset.aparat.com/aparat-video/983f2d4ca2f33b7f17bb18e7f15adfeb42100913-480p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjY4NDNmYTNkOTk2MTZkZjA1YTQyNzk0YzcyZmFlNThkIiwiZXhwIjoxNjc0MjI0NDc0LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.SLJ9ZdbwamtUhKw9X6ZrRQfEcforWHBC89AcBHu7p_c",
        category: "Action/Fantasy",
        year: 2021,
        duration: Duration(hours: 1, milliseconds: 46)),
    Movie(
        name: "Rango",
        imagePath:
            "https://m.media-amazon.com/images/M/MV5BMTc4NjEyODE1OV5BMl5BanBnXkFtZTcwMjYzNTkxNA@@._V1_FMjpg_UX1000_.jpg",
        videoPath:
            "https://as3.asset.aparat.com/aparat-video/e49c3e700176da4cc0005112135c428523685297-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6Ijg4OTljMWQ4OGE0YWZmNDBlOWQzYzZlYzU2ZWZlYmEwIiwiZXhwIjoxNjc0MjI0Njg1LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.gbgF4OhFnkC0JP-9CgtT85jkmyTwCACsZB91AqyyL98",
        category: "Family/Western",
        year: 2021,
        duration: Duration(hours: 1, milliseconds: 30)),
    Movie(
        name: "Hitman",
        imagePath:
            "https://m.media-amazon.com/images/M/MV5BMDlmMmZhZjQtZDhlMi00MzU0LWIwYjMtNDRhOGE5YzczYjBmXkEyXkFqcGdeQXVyNDQ2MTMzODA@._V1_.jpg",
        videoPath:
            "https://as2.asset.aparat.com/aparat-video/354da571f27cade274580afd5631159017619794-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6ImY4OGYwYmM0OWQyNGE5NzIyOWQ0NjE5YWUxNTRlOWY0IiwiZXhwIjoxNjc0MjI0ODcwLCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.LyC60bqHjKsdFIoYbOayS_A9pYgM-t0gjMI2Y6J8nYk",
        category: "Action/Thrillerv",
        year: 2021,
        duration: Duration(hours: 1, milliseconds: 46)),
    Movie(
        name: "Carter",
        imagePath:
            "https://m.media-amazon.com/images/M/MV5BNWEyOThlZTAtMzExMy00NDBhLTk4Y2QtMDg3OTRkNzgyNjEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg",
        videoPath:
            "https://caspian4.asset.aparat.com/aparat-video/44e7a1c8275f45b74087276932968d2a46908015-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjYyZDAyYmI4MmE5MTliYzMzNmZjY2U1ZmEyN2NjNDU4IiwiZXhwIjoxNjc0MjI0OTkyLCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.wBALh4MNzXmtu2dxieJl4MHKSj5QNeFsMdZdrws6ET4",
        category: "Action/Fantasy",
        year: 2021,
        duration: Duration(hours: 2, milliseconds: 25)),
    Movie(
        name: "Interceptor",
        imagePath:
            "https://m.media-amazon.com/images/M/MV5BMzU3OGY2NzMtOTc4NS00NThhLTk0MmYtODNlZTAwMzY0OTQxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
        videoPath:
            "https://www.aparat.com/m/xwdhr/%D8%B1%D8%A7%DB%8C%DA%AF%D8%A7%D9%86_-_%D9%85%D9%88%D8%B1%D8%AA%D8%A7%D9%84_%DA%A9%D9%85%D8%A8%D8%AA",
        category: "Action/Fantasy",
        year: 2021,
        duration: Duration(hours: 2, milliseconds: 25)),
    Movie(
        name: "Troll",
        imagePath:
            "https://m.media-amazon.com/images/M/MV5BOWQzMDc5OTMtMjFiMy00M2I3LWIyZWMtODM4NTRhMGI2ZTRkXkEyXkFqcGdeQXVyNDAxNzcyNw@@._V1_.jpg",
        videoPath:
            "https://persian3.asset.aparat.com/aparat-video/45229651f0184dc8d1436b5806b8314446331654-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjNiMTFkZmUwOTRhMjE4MmViMjllMWIzNmYyNTA2YWMxIiwiZXhwIjoxNjc0MjI1MTQxLCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.1PMBlRJQuehC4_aYjrD06c7c5upeSqztfEFlsWGd8qY",
        category: "Action/Fantasy",
        year: 2021,
        duration: Duration(hours: 2, milliseconds: 25)),
    Movie(
        name: "Red Notice",
        imagePath:
            "https://cps-static.rovicorp.com/2/Open/Netflix/Program/38472646/_derived_jpg_q90_310x470_m0/Red_Notice_PA_2x3_27_1635852053404_1.jpg",
        videoPath:
            "https://hajifirouz3.asset.aparat.com/aparat-video/cd8bd65a53136f52daeeb685aadbe3b239624396-720p.mp4?wmsAuthSign=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbiI6IjkyOGIwMDYzYTk3MjMxZmJiMTdmNmYwYjg3NmJkNjRiIiwiZXhwIjoxNjc0MjI1MjI1LCJpc3MiOiJTYWJhIElkZWEgR1NJRyJ9.xgVKKwkKzEp4EsjiLBfrMyrmfZD_GD7IlB0LW9kTDr0",
        category: "Action/Fantasy",
        year: 2021,
        duration: Duration(hours: 2, milliseconds: 25)),
  ];
}
