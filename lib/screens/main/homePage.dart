import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), (() {
      Navigator.pushNamedAndRemoveUntil(
          context, "/languageChoosing", (route) => false);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF058F1A),
      body: Center(child: SvgPicture.asset("assets/logo_farm.svg")),
    );
  }
}
