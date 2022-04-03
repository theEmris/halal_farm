import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/components/ListOfFlags.dart';
import 'package:halal_farm/core/constants/UiConstants.dart';
import 'package:halal_farm/core/components/listOFLanguages.dart';
import 'package:halal_farm/sizeConfig.dart';

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
          showLogo(),
          UiConstants.TextDesignBoldAndBig(context, "Tilni tanlang"),
          Text(
            "Dasturni qaysi tilda ishlatishni xoxlaysiz?",
            style: TextStyle(fontSize: 19),
          ),
          Center(
              child: Container(
            alignment: Alignment.center,
            height: getHeight(300),
            width: getWidth(343),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Color(0xFFF2F1F7),
            ),
            child: showLanList(),
          )),
          InkWell(
            child: UiConstants.constButtonNext("Keyingisi", context),
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/asosiyPage", (route) => false);
            },
          )
        ],
      ),
    );
  }

  ListView showLanList() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 13),
        itemBuilder: ((context, index) {
          return Container(
            height: getHeight(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: getHeight(40),
                  backgroundImage: AssetImage(ListOfFlags[index]),
                ),
                UiConstants.TextDesignForLanguageName(
                    context, ListOfLanguages[index]),
                Icon(
                  Icons.check,
                  color: Colors.white,
                )
              ],
            ),
          );
        }),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 3);
  }

  SizedBox showLogo() {
    return SizedBox(
      child: SvgPicture.asset("assets/logo_black.svg"),
    );
  }
}
