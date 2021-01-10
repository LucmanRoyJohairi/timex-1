import 'package:flutter/material.dart';
import 'User.dart';

import 'WeekView.dart';
import 'loginpage.dart';
import 'registrationpage.dart';

void main() => runApp(MyApp()); //i changed the runApp to run the MyApp below

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // i changed the page to be called.
      // MyHomePage(title: 'Timex')
      //i also added routes, this will set which page to go to
      //
      routes: {
        '/weekview': (context) => WeekView(),
        '/registration': (context) => RegistrationPage(),
      },
    );
  }
}
