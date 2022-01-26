import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notes_app/widgate/TextfieldNotes.dart';
import 'dart:ui';
import 'package:flutter/services.dart';


class Create_Or_Update_Category extends StatefulWidget {
  const Create_Or_Update_Category({Key? key}) : super(key: key);



  @override
  _Create_Or_Update_CategoryState createState() => _Create_Or_Update_CategoryState();
}

class _Create_Or_Update_CategoryState extends State<Create_Or_Update_Category> {

  late TextEditingController _NameCategory;
  late TextEditingController _ShortDescriptionCategory;



  String? _NameCategoryError;
  String? _ShortDescriptionCategoryError;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _NameCategory = TextEditingController();
    _ShortDescriptionCategory = TextEditingController();

  }

  void navigaterToSignUpScreen() {
    Navigator.pushNamed(context, '/Category');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _NameCategory.dispose();
    _ShortDescriptionCategory.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/Category');
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 24,
        ),
      ),),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top:13,right: 90,left: 90),
            child: Text(
              'New Category',
              style: TextStyle(
                  fontSize: 26.5,
                  color: HexColor('#23203F'),
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60,right: 125,left: 125),
            child: Text(
              'Create category',
              style: TextStyle(
                  fontSize: 17.5,
                  color: Color.fromRGBO(112, 112, 112, 150),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 105, right: 26, left: 26),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    elevation: 0,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 32, left: 25, right: 25, bottom: 30),
                        child: TextFieldNotes(
                            colorStyle: HexColor('#23203F'),
                            colorcursor: Colors.black,
                            colorBorderSide: Colors.grey.shade500,
                            colorhintText: HexColor('#9391A4'),
                            fontSize: 22,
                            hintText: 'Name Category',
                            textEditingController:_NameCategory ,
                            textInputType: TextInputType.text),
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
                            hintText: 'Short Description',
                            textEditingController: _ShortDescriptionCategory,
                            textInputType: TextInputType.text),
                      ),
                    ]),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        preformSave();
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(

                          minimumSize: Size(315, 53),
                          primary: HexColor('#6A90F2'),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30))))),

                ],
              ),
            ),
          ),
        ]));
  }

  void preformSave() {
    if (cheekData()
    )
      Save();
  }

  bool cheekData() {
    if (_NameCategory.text.isNotEmpty &&
        _ShortDescriptionCategory.text.isNotEmpty) {
      _NameCategoryError = null;
      _ShortDescriptionCategoryError = null;
      return true;
    }
    cheekTextfeilderror();
    showMessage('Enter required data', error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _NameCategoryError =
      _NameCategory.text.isEmpty ? 'Enter email' : null;
      _ShortDescriptionCategoryError =
      _ShortDescriptionCategory.text.isEmpty ? 'Enter password' : null;
    });
  }

  void Save() {
    showMessage('Save Success');
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context,'/Category');
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
