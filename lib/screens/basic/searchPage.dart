import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(

        centerTitle: true,
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            hintText: "search here"
          ),
        ),
        bottom: TabBar(tabs: [
          Tab(text: "hayvonlar (30+)",),
          Tab(text: "Firmalar (10+)",)

        ]),
      ),
      
    );
  }
}