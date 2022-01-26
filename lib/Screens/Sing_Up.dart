import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notes_app/widgate/TextfieldNotes.dart';
import 'package:flutter/services.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late TextEditingController _firstNameTextEditingController;
  late TextEditingController _LastNameTextEditingController;
  late TextEditingController _PhoneTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  String? _firstNameError;
  String? _LastNameError;
  String? _PhoneError;
  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstNameTextEditingController = TextEditingController();
    _LastNameTextEditingController = TextEditingController();
    _PhoneTextEditingController = TextEditingController();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTextEditingController.dispose();
    _LastNameTextEditingController.dispose();
    _PhoneTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

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
              padding: const EdgeInsets.only(right: 132, top: 92, left: 134),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 30,
                    color: HexColor('#23203F'),
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(top: 138, left: 116, right: 115),
              child: Text(
                'Create an account',
                style: TextStyle(
                    fontSize: 17.3,
                    color: HexColor('#9391A4'),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 215, right: 25, left: 27),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(width: 1, color: Colors.white)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 32, right: 15, left: 15),
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFieldNotes(
                                  colorStyle: HexColor('#23203F'),
                                  colorcursor: Colors.black,
                                  colorBorderSide: Colors.grey.shade500,
                                  colorhintText: HexColor('#9391A4'),
                                  fontSize: 22,
                                  hintText: 'First Name',
                                  textEditingController:
                                      _firstNameTextEditingController,
                                  textInputType: TextInputType.text),
                            ),
                            SizedBox(height: 14),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFieldNotes(
                                  colorStyle: HexColor('#23203F'),
                                  colorcursor: Colors.black,
                                  colorBorderSide: Colors.grey.shade500,
                                  colorhintText: HexColor('#9391A4'),
                                  fontSize: 22,
                                  hintText: 'Last Name',
                                  textEditingController:
                                      _LastNameTextEditingController,
                                  textInputType: TextInputType.text),
                            ),
                            SizedBox(height: 18),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFieldNotes(
                                  colorStyle: HexColor('#23203F'),
                                  colorcursor: Colors.black,
                                  colorBorderSide: Colors.grey.shade500,
                                  colorhintText: HexColor('#9391A4'),
                                  fontSize: 22,
                                  hintText: 'Email',
                                  textEditingController:
                                      _emailTextEditingController,
                                  textInputType: TextInputType.emailAddress),
                            ),
                            SizedBox(height: 17),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFieldNotes(
                                  colorStyle: HexColor('#23203F'),
                                  colorcursor: Colors.black,
                                  colorBorderSide: Colors.grey.shade500,
                                  colorhintText: HexColor('#9391A4'),
                                  fontSize: 22,
                                  hintText: 'Phone',
                                  textEditingController:
                                      _PhoneTextEditingController,
                                  textInputType: TextInputType.phone),
                            ),
                            SizedBox(height: 18),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: TextFieldNotes(
                                  colorStyle: HexColor('#23203F'),
                                  colorcursor: Colors.black,
                                  colorBorderSide: Colors.grey.shade500,
                                  colorhintText: HexColor('#9391A4'),
                                  fontSize: 22,
                                  hintText: 'Password',
                                  textEditingController:
                                      _passwordTextEditingController,
                                  textInputType: TextInputType.visiblePassword),
                            ),
                            SizedBox(height: 32),
                          ]),
                        )),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        preformSingUp();
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(315, 53),
                          primary: HexColor('#6A90F2'),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 56, left: 33),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void preformSingUp() {
    if (cheekData()) SingUp();
  }

  bool cheekData() {
    if (_firstNameTextEditingController.text.isNotEmpty &&
        _LastNameTextEditingController.text.isNotEmpty &&
        _PhoneTextEditingController.text.isNotEmpty &&
        _emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      _firstNameError = null;
      _LastNameError = null;
      _PhoneError = null;
      _emailError = null;
      _passwordError = null;
      return true;
    }
    cheekTextfeilderror();
    showMessage('Enter required data', error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _firstNameError = _firstNameTextEditingController.text.isEmpty
          ? 'Enter First Name'
          : null;
      _LastNameError = _LastNameTextEditingController.text.isEmpty
          ? 'Enter Last Name'
          : null;
      _PhoneError =
          _PhoneTextEditingController.text.isEmpty ? 'Enter Phone' : null;
      _emailError =
          _emailTextEditingController.text.isEmpty ? 'Enter email' : null;
      _passwordError =
          _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
  }

  void SingUp() {
    showMessage('Sing Up Success');
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/Category');
    });
  }

  void showMessage(String mesasage, {bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mesasage),
        backgroundColor: error ? Colors.red : Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          onPressed: () {},
          label: 'UNDO',
          textColor: Colors.yellow,
        ),
      ),
    );
  }
}
