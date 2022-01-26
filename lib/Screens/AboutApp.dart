import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.only(top: 56,left: 33),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/Settings');
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    SizedBox(width:65),
                    Text('About App', style: TextStyle(fontSize: 22,color: HexColor('#474559'))),
                  ],
                ),
          ),
          Padding(
                padding: const EdgeInsets.only(left: 80, right: 62, top: 281),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 5, color: HexColor('#6A90F2'))),
                  child: Container(
                    color: Colors.white,
                    height: 250,
                    width: 250,
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
                              color: Colors.indigo.shade900,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'For Organized Life',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(112, 112, 112, 150),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 20,top: 800,right: 95,left: 94),
                Positioned(
                  bottom: 20,
                  left: 95,
                  child: Text(
                    'iOS Course - Notes App V1.0',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(112, 112, 112, 150),
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300),
                  ),

          )
        ]),
              ),
            ));
  }
}
