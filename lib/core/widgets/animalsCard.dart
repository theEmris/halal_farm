import 'package:flutter/material.dart';
import 'package:halal_farm/core/constants/UiConstants.dart';
import 'package:halal_farm/sizeConfig.dart';

class AnimalsCard extends StatelessWidget {
  String title;
  String image;
  String maturedDay;
  int matureIndecator;
  double percentageOffoodOne;
  String foodFirstName;
  String foodSecondName;

  String imageFoodFirst;
  String imageFoodSecond;
  double percentageOfSecondFood;

  AnimalsCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.maturedDay,
      required this.matureIndecator,
      required this.foodFirstName,
      required this.foodSecondName,
      required this.percentageOffoodOne,
      required this.imageFoodFirst,
      required this.imageFoodSecond,
      required this.percentageOfSecondFood})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:mycontainer(context)
    );
  }

  Container mycontainer(BuildContext context) {
    return Container(
      height: getHeight(607),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      child: Column(
        children: [
          UiConstants.TextDesignForLanguageName(context, title),
          Container(
            height: getHeight(194),
            width: getWidth(319),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(getHeight(20))),
              ),
            child: Image(image: AssetImage(image))
          ),
          Row(
            children: [
              Column(
                children: [
                  UiConstants.TextDesignForLanguageName(
                      context, "Yetilish ko'statgichi"),
                  Text("Taxminiy yetilish sanasi:"),
                  Text(maturedDay),
                ],
              ),
              persentageContainer(
                persentage: matureIndecator,
              ),
            ],
          ),
          UiConstants.TextDesignForLanguageName(context, "Yemishlar (2)"),
      foodtile(foodName:foodFirstName,leftPresentate: percentageOffoodOne,picture:imageFoodFirst,),
      foodtile(foodName:foodSecondName,leftPresentate: percentageOfSecondFood,picture:imageFoodSecond,)

        ],
      ),
    );
  }
}

class foodtile extends StatelessWidget {
  String foodName;
  double leftPresentate;
  String picture;

  foodtile({
    Key? key,
    required this.foodName,
    required this.leftPresentate,
    required this.picture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListTile(
      leading: CircleAvatar(
        radius: getHeight(29),
        backgroundImage: AssetImage(picture),
      ),
      title: UiConstants.TextDesignForLanguageName(
          context, "${foodName} ${leftPresentate.toInt()} %"),
      subtitle: leftRateContainer(
        leftPersentimiz: leftPresentate,
      ),
    );
  }
}

class leftRateContainer extends StatelessWidget {
  double leftPersentimiz;
  leftRateContainer({Key? key, required this.leftPersentimiz})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        width: getWidth(247),
        height: getHeight(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: (leftPersentimiz * (getWidth(247)/100)),
               height: getHeight(10),
               decoration: BoxDecoration(
               borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: leftPersentimiz <= 25 ? Colors.red : Colors.green),

              ),
          ],
        ),
        );
  }
}

class persentageContainer extends StatelessWidget {
  int persentage;
  persentageContainer({Key? key, required this.persentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      children: [
        UiConstants.TextDesignForLanguageName(context, "${persentage} %"),
        Container(
          height: getHeight(100),
          width: getWidth(74),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.all(Radius.circular(getHeight(12))),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: getWidth(74),
                height: getHeight(persentage.toDouble()),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(getHeight(12)),
                    ),
                    color: persentage <= 12 ? Colors.red : Colors.green),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
