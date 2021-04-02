import 'package:carreras/src/home_page.dart';
import 'package:carreras/src/page1.dart';
import 'package:carreras/src/page2.dart';
import 'package:carreras/src/page3.dart';
import 'package:carreras/src/page4.dart';
import 'package:carreras/src/page5.dart';
import 'package:carreras/src/page6.dart';
import 'package:carreras/src/page7.dart';
import 'package:carreras/src/page8.dart';
import 'package:carreras/src/page9.dart';
import 'package:carreras/src/page10.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage()

      routes: <String, WidgetBuilder>{
        '/': (BuildContext contex) => HomePage(),
        'one': (BuildContext contex) => Page1(),
        'two': (BuildContext contex) => Page2(),
        'three': (BuildContext contex) => Page3(),
        'four': (BuildContext contex) => Page4(),
        'five': (BuildContext contex) => Page5(),
        'six': (BuildContext contex) => Page6(),
        'seven': (BuildContext contex) => Page7(),
        'eight': (BuildContext contex) => Page8(),
        'nine': (BuildContext contex) => Page9(),
        'ten': (BuildContext contex) => Page10(),
      },
    );
  }
}
