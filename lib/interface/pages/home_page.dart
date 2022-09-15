import 'package:flutter/material.dart';
import 'package:moviez/interface/widgets/movie_tile.dart';
import 'package:moviez/interface/widgets/top_movie_card.dart';
import 'package:moviez/shared/shared_functions.dart';
import 'package:moviez/shared/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: responsiveHeight(33, context),
          right: responsiveWidth(12, context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moviez',
                  style: primaryTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: black,
                  ),
                ),
                SizedBox(
                  height: responsiveHeight(4, context),
                ),
                Text(
                  'Watch much easier',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/search');
              },
              child: Container(
                width: responsiveWidth(22, context),
                height: responsiveHeight(22, context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_search.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget topMovie() {
      return Container(
        width: double.infinity,
        height: responsiveHeight(279, context),
        margin: EdgeInsets.only(
          top: responsiveHeight(30, context),
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            TopMovieCard(
              title: "John Wick 4",
              genre: "Action, Crime",
              imgurl: 'assets/image_movie.png',
              rating: 5,
            ),
            TopMovieCard(
              title: "Bohemian Rhapsody",
              genre: "Documentary",
              imgurl: 'assets/image_movie2.png',
              rating: 3,
            ),
          ],
        ),
      );
    }

    Widget fromDisney() {
      return Container(
        margin: EdgeInsets.only(
          top: responsiveHeight(30, context),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: black,
              ),
            ),
            SizedBox(
              height: responsiveHeight(20, context),
            ),
            const MovieTile(
              title: "Mulan Session",
              imgUrl: "assets/image_movie3.png",
              genre: 'History, War',
              rating: 3,
            ),
            const MovieTile(
              title: "Beauty & Beast",
              imgUrl: "assets/image_movie4.png",
              genre: 'Sci-Fiction',
              rating: 5,
            ),
            const MovieTile(
              title: "The Dark II",
              imgUrl: "assets/image_movie5.png",
              genre: 'Horror',
              rating: 4,
            ),
            const MovieTile(
              title: "The Dark Knight",
              imgUrl: "assets/image_movie6.png",
              genre: 'Heroes',
              rating: 5,
            ),
            const MovieTile(
              title: "The Dark Tower",
              imgUrl: "assets/image_movie7.png",
              genre: 'Action',
              rating: 4,
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          padding: EdgeInsets.only(
            left: responsiveWidth(24, context),
          ),
          children: [
            header(),
            topMovie(),
            fromDisney(),
          ],
        ));
  }
}
