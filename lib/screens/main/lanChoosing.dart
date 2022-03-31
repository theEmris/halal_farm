import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/UiConstants.dart';
import 'package:halal_farm/provider/text_provider.dart';
import 'package:halal_farm/sizeConfig.dart';
import 'package:provider/provider.dart';

class LanguageChoosing extends StatelessWidget {
  const LanguageChoosing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: UiConstants.scafBackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: SvgPicture.asset("assets/logo_black.svg"),
          ),
          UiConstants.TextDesignBoldAndBig(context, "Tilni tanlang"),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: getHeight(343),
              width: getWidth(346),
              child: ElevatedButton(
                child: Text("language choosing page"),
                onPressed: () {
                  context.read<TextProvider>().changeMode();
                },
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Color(0xFFF2F1F7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
