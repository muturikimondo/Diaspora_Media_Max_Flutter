
//@dart=2.9

import 'package:flutter/material.dart';
import 'package:media_house_all/home_screen.dart';
import 'package:provider/provider.dart';

import 'HomePage.dart';
import 'model/myaudio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: ChangeNotifierProvider(
          create: (_)=>MyAudio(),
          child: HomeScreen()
      )
    );
  }
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: HomePage(),
    );
  }
}
 */