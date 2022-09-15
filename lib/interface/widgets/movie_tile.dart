import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez/shared/shared_functions.dart';
import 'package:moviez/shared/style.dart';

class MovieTile extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String genre;
  final double rating;

  const MovieTile({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.genre,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: responsiveHeight(128, context),
      margin: EdgeInsets.only(
        bottom: responsiveHeight(30, context),
      ),
      child: Row(
        children: [
          Container(
            width: responsiveHeight(100, context),
            height: responsiveHeight(128, context),
            margin: EdgeInsets.only(
              right: responsiveWidth(20, context),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: primaryTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              Text(
                genre,
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: responsiveHeight(20, context),
              ),
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: responsiveWidth(18, context),
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(
                    horizontal: responsiveWidth(2, context)),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
