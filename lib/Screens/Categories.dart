import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 132, top: 58, right: 17),
            child: Row(
              children: [
                Text('Categories',
                    style: TextStyle(
                        color: HexColor('#474559'),
                        fontSize: 22,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold)),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/Settings');
                    },
                    icon: Icon(Icons.settings),
                    color: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 17, top: 109),
            child: ListView(
              children: [
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 15.5),
                      CircleAvatar(
                        backgroundColor: HexColor('#6A90F2'),
                        radius: 28,
                        child: Text(
                          'W',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Work',
                            style: TextStyle(
                                fontSize: 13,
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Notes for work...',
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(width: 120),
                      Image.asset(
                        'images/delete-24px.png',
                        height: 16,
                        width: 16,
                      ),
                      Spacer(),
                      Container(
                        color: HexColor('#6A90F2'),
                        height: 70,
                        width: 20,
                        child: IconButton(
                            iconSize: 10,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/Category_Notes');
                            },
                            icon: Icon(Icons.edit),
                            color: HexColor('#FFFFFF')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 40,
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, '/Create_Or_Update_Category');
              },
              icon: Icon(
                Icons.add_circle_outlined,
                color: HexColor('#6A90F2'),
                size: 65,
              ),
            ),
          ),
        ],
      ),
      //  ),
    );
  }
}
