import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Launch_screen extends StatefulWidget {
  const Launch_screen({Key? key}) : super(key: key);

  @override
  _Launch_screenState createState() => _Launch_screenState();
}

class _Launch_screenState extends State<Launch_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            body: SafeArea(
          child: Card(
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: HexColor('#707070'))),
            child: Stack(children: [
              Image.asset(
                'images/launch_bg.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20, top: 309.5, left: 123.5, right: 123.5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 60,
                        backgroundImage: AssetImage('images/3.png'),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'My Notes',
                        style: TextStyle(
                            fontSize: 28,
                            color: HexColor('#23203F'),
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'For Organized Life',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(112, 112, 112, 150),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Text(
                        'iOS Course - Notes App V1.0',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(112, 112, 112, 150),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w300),
                      )
                    ]),
              ),
            ]),
          ),
        ));
  }
}
