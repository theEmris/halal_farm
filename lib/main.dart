import 'package:flutter/material.dart';
import 'package:halal_farm/provider/text_provider.dart';
import 'package:halal_farm/router/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>TextProvider())
    ],
    child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _forRouter = RouteBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: _forRouter.onGenerateRoute,
    );
  }
}
