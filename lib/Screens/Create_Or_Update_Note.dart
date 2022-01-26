import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:notes_app/widgate/TextfieldNotes.dart';


class Create_Or_Update_Note extends StatefulWidget {
  const Create_Or_Update_Note({Key? key}) : super(key: key);


  @override
  _Create_Or_Update_NoteState createState() => _Create_Or_Update_NoteState();
}

class _Create_Or_Update_NoteState extends State<Create_Or_Update_Note> {



  late TextEditingController _Note;
  late TextEditingController _Description;



  String? _NoteError;
  String? _DescriptionError;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _Note = TextEditingController();
    _Description = TextEditingController();

  }

  void navigaterToSignUpScreen() {
    Navigator.pushNamed(context, '/Category_Notes');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _Note.dispose();
    _Description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
             body: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 58,left: 33),
            child: Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Category_Notes');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(top:95,left:114,right: 114),
            child: Text(
              'New Note',
              style: TextStyle(
                  fontSize: 30,
                  color: HexColor('#23203F'),
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 141,left: 142),
            child: Text(
              'Create note',
              style: TextStyle(
                  fontSize: 18,
                  color: HexColor('#9391A4'),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 207, right: 26, left: 26),
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
                            colorStyle:HexColor('#23203F'),
                            colorcursor: Colors.black,
                            colorBorderSide: Colors.grey.shade500,
                            colorhintText: HexColor('#9391A4'),
                            fontSize: 22,
                            hintText: 'Name Note',
                            textEditingController:_Note ,
                            textInputType: TextInputType.text),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(bottom: 32, right: 20, left: 21),
                        child: TextFieldNotes(
                            colorStyle:HexColor('#23203F'),
                            colorcursor: Colors.black,
                            colorBorderSide: Colors.grey.shade500,
                            colorhintText: HexColor('#9391A4'),
                            fontSize: 22,
                            hintText: 'Description',
                            textEditingController: _Description,
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
  if (_Note.text.isNotEmpty &&
      _Description.text.isNotEmpty) {
    _NoteError = null;
    _DescriptionError = null;
    return true;
  }
  cheekTextfeilderror();
  showMessage('Enter required data', error: true);
  return false;
}

void cheekTextfeilderror() {
  setState(() {
    _NoteError =
    _Note.text.isEmpty ? 'Enter email' : null;
    _DescriptionError =
    _Description.text.isEmpty ? 'Enter password' : null;
  });
}

void Save() {
  showMessage('Save Success');
  Future.delayed(Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context,'/Category_Notes');
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
