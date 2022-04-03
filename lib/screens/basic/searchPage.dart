import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Color(0xFFE5E5E5),
                body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    actions: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.format_list_bulleted_sharp,color: Colors.black,))
                    ],
                    centerTitle: true,
                    title: TextFormField(
                      
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:BorderSide(color: Colors.black) ,
                          borderRadius: BorderRadius.all(Radius.circular(20)))
                        
                      
                      ,hintText: "search here"
                      ),
                    ),
                    backgroundColor: Color(0xFFE5E5E5),
                    pinned: true,
                    floating: true,
                    bottom: TabBar(
                    indicatorWeight: 5,
                    indicatorColor: Colors.black
                    ,indicatorSize: TabBarIndicatorSize.label,                        
                      
                      isScrollable: true,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Tab(child: Text('Hayvonlar(115)',style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),)),
                        ),
                        Tab(child: Text('Fermalar(12)',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20)),)
                        
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  Icon(Icons.flight, size: 350),
                  Icon(Icons.directions_transit, size: 350),
                  
                ],
              ),
            ))));
  }
}
