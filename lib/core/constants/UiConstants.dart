import 'package:flutter/material.dart';
import 'package:halal_farm/provider/text_provider.dart';
import 'package:halal_farm/sizeConfig.dart';
import 'package:provider/provider.dart';

class UiConstants {
  static var scafBackColor = Color(0xFFE5E5E5);

  static Text TextDesignBoldAndBig(BuildContext context, String myText) {
    SizeConfig().init(context);

    return Text(
      myText,
      style: TextStyle(
          color: Colors.black,
          fontSize: getHeight(26),
          fontWeight: FontWeight.bold),
    );
  }

  static Text TextDesignForLanguageName(BuildContext context, String myText) {
    SizeConfig().init(context);

    return Text(
      myText,
      style: TextStyle(
          color: Colors.black,
          fontSize: getHeight(21),
          fontWeight: FontWeight.bold),
    );
  }

  static Container constButtonNext(String text, BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      height: getHeight(56),
      width: getWidth(343),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 21),
      ),
      decoration: BoxDecoration(
          color: Color(0xFF058F1A),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
