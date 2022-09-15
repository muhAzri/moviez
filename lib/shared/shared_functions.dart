import 'package:flutter/material.dart';

responsiveWidth(width, context) {
  var responsive = width * MediaQuery.of(context).size.width / 375;
  var round = responsive.roundToDouble();
  return round;
}

responsiveHeight(height, context) {
  var responsive = height * MediaQuery.of(context).size.height / 812;
  var round = responsive.roundToDouble();
  return round;
}