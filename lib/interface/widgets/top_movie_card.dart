import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez/shared/shared_functions.dart';
import 'package:moviez/shared/style.dart';

class TopMovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final String imgurl;
  final double rating;

  const TopMovieCard({
    Key? key,
    required this.title,
    required this.genre,
    required this.imgurl,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsiveWidth(300, context),
      height: responsiveHeight(280, context),
      margin: EdgeInsets.only(
        right: responsiveWidth(24, context),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: responsiveWidth(300, context),
            height: responsiveHeight(207, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imgurl),
              ),
            ),
          ),
          SizedBox(
            height: responsiveHeight(20, context),
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      genre,
                      style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
          ),
        ],
      ),
    );
  }
}
