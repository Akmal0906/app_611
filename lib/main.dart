import 'package:app_611/pages/first_page.dart';
import 'package:app_611/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
      routes: {
        FirstPage.id:(context)=>const FirstPage(),
        HomePage.id:(context)=>const HomePage(),
      },
    );
  }
}


