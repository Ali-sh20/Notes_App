import 'package:flutter/material.dart';
import 'package:notes_app/Screens/Categories.dart';
import 'package:notes_app/Screens/Launch_screen.dart';
import 'Screens/AboutApp.dart';
import 'Screens/Category_Notes.dart';
import 'Screens/Create_Or_Update_Category.dart';
import 'Screens/Create_Or_Update_Note.dart';
import 'Screens/Login.dart';
import 'Screens/Profile.dart';
import 'Screens/Settings.dart';
import 'Screens/Sing_Up.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Launch_screen(),
        initialRoute: '/Launch_screen',
        routes: {
          '/Launch_screen': (context)=>Launch_screen(),
          '/login': (context)=>login(),
          '/Signup': (context)=>Signup(),
          '/Category': (context)=>Category(),
          '/Settings': (context)=>Settings(),
          '/Category_Notes': (context)=>Category_Notes(),
          '/Create_Or_Update_Category': (context)=>Create_Or_Update_Category(),
          '/Create_Or_Update_Note': (context)=>Create_Or_Update_Note(),
          '/Profile': (context)=>Profile(),
          '/AboutApp': (context)=>AboutApp(),
        }
    );



  }
  }

