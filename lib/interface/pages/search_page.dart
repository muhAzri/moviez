import 'package:flutter/material.dart';
import 'package:moviez/shared/shared_functions.dart';
import 'package:moviez/shared/style.dart';

import '../widgets/movie_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget searchBar() {
      return Container(
        width: double.infinity,
        height: responsiveHeight(46, context),
        margin: EdgeInsets.only(
          top: responsiveHeight(30, context),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: responsiveWidth(22, context),
          vertical: responsiveHeight(12, context),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/icon_search.png',
              width: responsiveWidth(22, context),
            ),
            SizedBox(
              width: responsiveWidth(16, context),
            ),
            Expanded(
              child: TextFormField(
                style: primaryTextStyle.copyWith(
                  fontWeight: bold,
                ),
                decoration: InputDecoration.collapsed(
                  hintText: 'search here',
                  hintStyle: secondaryTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget searchResult() {
      return Container(
        margin: EdgeInsets.only(
          top: responsiveHeight(35, context),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Search Result ',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  '(3)',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsiveHeight(20, context),
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

    Widget suggestButton() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            top: responsiveHeight(72, context),
          ),
          width: responsiveWidth(220, context),
          height: responsiveHeight(60, context),
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(37),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Suggest Movie',
                style: primaryTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              )),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: responsiveWidth(24, context),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: ListView(
            children: [
              searchBar(),
              searchResult(),
              suggestButton(),
            ],
          ),
        ),
      ),
    );
  }
}
