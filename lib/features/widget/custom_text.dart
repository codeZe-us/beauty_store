import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constant/dimensions.dart';


Widget customGeneralTextNunitoSans({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return AnimatedTextKit(
    key: UniqueKey(),
    animatedTexts: [
      TyperAnimatedText(
        inputText,
        textStyle: GoogleFonts.nunitoSans(
          fontSize: fontSize,
          fontWeight: weight,
          color: colorName,
        ),
        speed: const Duration(milliseconds: 65),
      ),
    ],
    isRepeatingAnimation: true,
    repeatForever: true,
  );
}

Text customGeneralTextNunitoSansCenter({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    textAlign: TextAlign.center,
    style: GoogleFonts.nunitoSans(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}

Text customTextNunitoSansCenter({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    style: GoogleFonts.nunitoSans(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}


Text customTextNunitoSansCenterr({
  required String inputText,
  required double letterSpacing,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text(
    inputText,
    style: GoogleFonts.nunitoSans(
        fontSize: getProportionateScreenWidth(fontSize),
        fontWeight: weight,
        color: colorName),
  );
}

Text customTextNunitoSansCenter2({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text.rich(TextSpan(children: [
    TextSpan(
      text: inputText,
      style: GoogleFonts.nunitoSans(
          fontSize: getProportionateScreenWidth(fontSize),
          fontWeight: weight,
          color: colorName),
    )
  ]));
}

Text customTextNunitoSansCenter3({
  required String inputText,
  required double fontSize,
  required FontWeight weight,
  required Color colorName,
}) {
  return Text.rich(TextSpan(children: [
    TextSpan(
      text: inputText,
      style: GoogleFonts.nunitoSans(
          fontSize: getProportionateScreenWidth(fontSize),
          fontWeight: weight,
          color: colorName),
    )
  ]));
}
