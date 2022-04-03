import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:halal_farm/core/constants/UiConstants.dart';
import 'package:halal_farm/core/widgets/animalsCard.dart';
import 'package:halal_farm/sizeConfig.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF058F1A),
      body: Container(
        color: Color(0xFF058F1A),
        child: CustomScrollView(
          slivers: [
            sliverAppBar(),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color(0xFFF2F1F7),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: UiConstants.TextDesignForLanguageName(
                          context, "Mening hayvonlarim (2)"),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(
                          color: Color(0xFF058F1A),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: AnimalsCard(
                          title: "Hisor Oti",
                          image: "assets/hisorOti.png",
                          maturedDay: "23.09.2022",
                          matureIndecator: 52,
                          foodFirstName: "Bug'doy",
                          foodSecondName: "Beda",
                          percentageOffoodOne: 34,
                          imageFoodFirst: "assets/bugdoy.png",
                          imageFoodSecond: "assets/peda.png",
                          percentageOfSecondFood: 23),
                    ),
                  ],
                ),
              ),
            ),
             SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color(0xFFF2F1F7),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      decoration: BoxDecoration(
                          color: Color(0xFF058F1A),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: AnimalsCard(
                          title: "Hisor Qo'yi",
                          image: "assets/hisorQuyi.png",
                          maturedDay: "23.09.2022",
                          matureIndecator: 30,
                          foodFirstName: "Bug'doy",
                          foodSecondName: "Beda",
                          percentageOffoodOne: 34,
                          imageFoodFirst: "assets/bugdoy.png",
                          imageFoodSecond: "assets/peda.png",
                          percentageOfSecondFood: 20),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }

  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      backgroundColor: Color(0xFF058F1A),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/logo_farm.svg"),
              SizedBox(
                height: getHeight(20),
              ),
              Column(children: [
                Text("Balansingiz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: getHeight(20),
                      backgroundColor: Colors.white,
                      child: Center(
                        child: CircleAvatar(
                          radius: getHeight(16),
                          backgroundColor: Color(0xFF058F1A),
                          child: Center(
                              child: IconButton(icon: Icon(Icons.add),
                              onPressed: (){},)),
                        ),
                      ),
                    ),
                    Text("450 000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                        )),
                    Text("So'm",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text("Hisobni to'ldirish uchun ID: 255 584 789",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      )),
                ),
              ]),
            ],
          ),
        ),
      ),
      expandedHeight: getHeight(200),
    );
  }
}
