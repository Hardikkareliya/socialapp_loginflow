import 'package:flutter/material.dart';

const colorBackground = Color(0xff232323);
const colorLightBlack = Color(0xff4C4C4C);
const colorPink = Color(0xffE3428F);
const colordarkGrey = Color(0xff7D7D7D);

const colorButtonLight1 = Color.fromRGBO(50, 119, 241, 1);
const colorButtonDark1 = Color.fromRGBO(15, 91, 224, 1);

const colorButtonPink1 = Color.fromRGBO(226, 66, 143, 1);
const colorButtonPink2 = Color.fromRGBO(190, 102, 235, 1);

const blueDarkGradient1 = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: <Color>[colorButtonPink1, colorButtonPink2],
  tileMode: TileMode.clamp,
);
