import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Settings',
            style: TextStyle(
                color: HexColor('#474559'),
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 22)),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Category_Notes');
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 25),
              Center(
                child: CircleAvatar(
                  backgroundColor: HexColor('#6A90F2'),
                  radius: 40,
                  child: Text(
                    'A',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 40),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Ali Jamil Shabana',
                style: TextStyle(
                    color: HexColor('#111111'),
                    fontSize: 15,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w500),
              ),
              Text('alishabana2015@gmail.com',
                  style: TextStyle(
                      color: HexColor('#A5A5A5'),
                      fontSize: 15,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 10),
              Divider(
                color: HexColor('#D0D0D0'),
                indent: 45,
                endIndent: 45,
                thickness: 1,
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 18),
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 5,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: HexColor('#6A90F2'),
                          radius: 28,
                          child: Icon(
                            Icons.language,
                            color: Colors.white,
                          )),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Language',
                            style: TextStyle(
                                color: HexColor('#111111'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                          Text(
                            'Selected language: EN',
                            style: TextStyle(
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(width: 71),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 18),
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: HexColor('#6A90F2'),
                          radius: 28,
                          child:
                              Icon(Icons.perm_identity, color: Colors.white)),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Profile',
                              style: TextStyle(
                                  color: HexColor('#111111'),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          Text(
                            'Update your data…',
                            style: TextStyle(
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(width: 99),
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/Profile');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 70,
                        width: 5,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 18),
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 5,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: HexColor('#6A90F2'),
                          radius: 28,
                          child: Icon(Icons.perm_device_info,
                              color: Colors.white)),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('About App',
                              style: TextStyle(
                                  color: HexColor('#111111'),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          Text(
                            'What is notes app?',
                            style: TextStyle(
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(width: 90),
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/AboutApp');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 18),
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: HexColor('#6A90F2'),
                          radius: 28,
                          child: Icon(
                            Icons.info,
                            color: Colors.white,
                          )),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('About course',
                              style: TextStyle(
                                  color: HexColor('#111111'),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          Text(
                            'Describe the course in brief',
                            style: TextStyle(
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(width: 38),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 70,
                        width: 5,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 17, left: 18),
                child: Card(
                  elevation: 3,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 5,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                          backgroundColor: HexColor('#6A90F2'),
                          radius: 28,
                          child: Icon(Icons.power_settings_new,
                              color: Colors.white)),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Logout',
                              style: TextStyle(
                                  color: HexColor('#111111'),
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          Text(
                            'Waiting your return…',
                            style: TextStyle(
                                color: HexColor('#A5A5A5'),
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(width: 80),
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  'iOS Course - Notes App V1.0',
                  style: TextStyle(
                      fontSize: 12,
                      color: HexColor('#A5A5A5'),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
