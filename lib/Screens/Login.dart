
import 'package:notes_app/Utills/helpers.dart';
import 'package:notes_app/api/StudentApiController.dart';
import 'package:notes_app/widgate/TextfieldNotes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with Helpers {

  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  String? _emailError;
  String? _passwordError;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToSignUpScreen;
  }

  void navigaterToSignUpScreen() {
    Navigator.pushNamed(context, '/Signup');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Card(
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
                padding: const EdgeInsets.only(right: 252, top:106, left: 28),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      color: HexColor('#23203F'),
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 153, left: 27),
                child: Text(
                  'Login to start using app,',
                  style: TextStyle(
                      fontSize: 18,
                      color: HexColor('#716F87'),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 258, right: 26, left: 26),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(width: 1, color: Colors.white)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32, left: 21, right: 20, bottom: 30),
                            child: TextFieldNotes(
                                colorStyle: HexColor('#23203F'),
                                colorcursor: Colors.black,
                                colorBorderSide: Colors.grey.shade500,
                                colorhintText: HexColor('#9391A4'),
                                fontSize: 22,
                                hintText: 'User Name',
                                textEditingController: _emailTextEditingController,
                                textInputType: TextInputType.emailAddress),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 32, right: 20, left: 21),
                            child: TextFieldNotes(
                                colorStyle: HexColor('#23203F'),
                                colorcursor: Colors.black,
                                colorBorderSide: Colors.grey.shade500,
                                colorhintText: HexColor('#9391A4'),
                                fontSize: 22,
                                hintText: 'Password',
                                textEditingController: _passwordTextEditingController,
                                textInputType: TextInputType.text),
                          ),
                        ]),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () async {
                            await preformLogin();
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20,color: HexColor('#FFFFFF'),fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(315, 53),
                              primary: HexColor('#6A90F2'),
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))))),
                      SizedBox(height: 20),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'Don\'t have an account?',
                                style: TextStyle(color: Colors.grey,fontSize: 18),
                                children: [
                                  TextSpan(text: ' '),
                                  TextSpan(
                                      text: 'Sign up',
                                      recognizer: _tapGestureRecognizer,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ])),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  Future preformLogin ()async {
    if (cheekData())
      await login();
  }

  bool cheekData ()  {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      _emailError = null;
      _passwordError = null;
      return true;
    }
    cheekTextfeilderror();
    showMessage(context, message: 'Enter required data', error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _emailError =
      _emailTextEditingController.text.isEmpty ? 'Enter email' : null;
      _passwordError =
      _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
  }
  Future login ()async {
    bool loggedIn=await StudentApiController().login(context,
        email: _emailTextEditingController.text,
        password: _passwordTextEditingController.text);
    if(loggedIn){
      Navigator.pushReplacementNamed(context,'/UserScreen');
    }

  }

}
