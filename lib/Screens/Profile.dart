import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notes_app/widgate/TextfieldNotes.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late TextEditingController _firstNameTextEditingController;
  late TextEditingController _LastNameTextEditingController;
  late TextEditingController _PhoneTextEditingController;
  late TextEditingController _emailTextEditingController;

  String? _firstNameError;
  String? _LastNameError;
  String? _PhoneError;
  String? _emailError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameTextEditingController = TextEditingController();
    _LastNameTextEditingController = TextEditingController();
    _PhoneTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTextEditingController.dispose();
    _LastNameTextEditingController.dispose();
    _PhoneTextEditingController.dispose();
    _emailTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Profile',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: HexColor('#474559'))),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/Settings');
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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Card(
                    elevation: 7,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, top: 5, bottom: 5, right: 15),
                          child: CircleAvatar(
                            backgroundColor: HexColor('#6A90F2'),
                            radius: 35,
                            child: Text(
                              'A',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 40),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Ali Jamil Shabana',
                              style: TextStyle(
                                  color: HexColor('#111111'),
                                  fontFamily: 'Quicksand',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'alishabana2015@gmail.com',
                              style: TextStyle(
                                  color: HexColor('#A5A5A5'),
                                  fontFamily: 'Quicksand',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 2, color: HexColor('#6A90F2'))),
                        child: Container(
                          color: Colors.white,
                          height: 58,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: HexColor('#6A90F2'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: HexColor('#A5A5A5'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 2, color: HexColor('#6A90F2'))),
                        child: Container(
                          color: Colors.white,
                          height: 58,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Done Notes',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: HexColor('#6A90F2'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: HexColor('#A5A5A5'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 2, color: HexColor('#6A90F2'))),
                        child: Container(
                          color: Colors.white,
                          height: 58,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Waiting Notes',
                                style: TextStyle(
                                    fontSize: 9,
                                    color: HexColor('#6A90F2'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '14',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: HexColor('#A5A5A5'),
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 1, color: Colors.white)),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 19),
                          child: TextFieldNotes(
                              colorStyle: HexColor('#111111'),
                              colorcursor: Colors.black,
                              colorBorderSide: Colors.grey.shade500,
                              colorhintText: HexColor('#A5A5A5'),
                              fontSize: 14,
                              hintText: 'First Name',
                              textEditingController:
                                  _firstNameTextEditingController,
                              textInputType: TextInputType.text),
                        ),
                        SizedBox(height: 19),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFieldNotes(
                              colorStyle: HexColor('#111111'),
                              colorcursor: Colors.black,
                              colorBorderSide: Colors.grey.shade500,
                              colorhintText: HexColor('#A5A5A5'),
                              fontSize: 14,
                              hintText: 'Last Name',
                              textEditingController:
                                  _LastNameTextEditingController,
                              textInputType: TextInputType.text),
                        ),
                        SizedBox(height: 19),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFieldNotes(
                              colorStyle: HexColor('#111111'),
                              colorcursor: Colors.black,
                              colorBorderSide: Colors.grey.shade500,
                              colorhintText: HexColor('#A5A5A5'),
                              fontSize: 14,
                              hintText: 'Phone',
                              textEditingController:
                                  _PhoneTextEditingController,
                              textInputType: TextInputType.phone),
                        ),
                        SizedBox(height: 19),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFieldNotes(
                              colorStyle: HexColor('#111111'),
                              colorcursor: Colors.black,
                              colorBorderSide: Colors.grey.shade500,
                              colorhintText: HexColor('#A5A5A5'),
                              fontSize: 14,
                              hintText: 'Email',
                              textEditingController:
                                  _emailTextEditingController,
                              textInputType: TextInputType.emailAddress),
                        ),
                        SizedBox(height: 20),
                      ])),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/Settings');
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(360, 50),
                        primary: HexColor('#6A90F2'),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
