import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Category_Notes extends StatefulWidget {
  const Category_Notes({Key? key}) : super(key: key);

  @override
  _Category_NotesState createState() => _Category_NotesState();
}

class _Category_NotesState extends State<Category_Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 58, left: 33, right: 19),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/Category');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Category Name',
                  style: TextStyle(
                      color: HexColor('#474559'),
                      fontFamily: 'Quicksand',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, '/Create_Or_Update_Note');
                    },
                    icon: Icon(Icons.add_circle_outlined),
                    color: Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Note Title',style: TextStyle(color: HexColor('#111111'),fontSize:13,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),),
                            SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of theprinting and typesetting industry. LoremIpsum has been the industry’s standarddummy text ever since the 1500s',
                                  style: TextStyle(fontSize: 12,fontFamily: 'Quicksand',fontWeight: FontWeight.w500,color: HexColor('#A5A5A5')),
                                )),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle,
                              color: HexColor('#C4C4C4'),
                            )),
                        Spacer(),
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Note Title',style: TextStyle(color: HexColor('#111111'),fontSize:13,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),),
                            SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of theprinting and typesetting industry. LoremIpsum has been the industry’s standarddummy text ever since the 1500s',
                                  style: TextStyle(fontSize: 12,fontFamily: 'Quicksand',fontWeight: FontWeight.w500,color: HexColor('#A5A5A5')),
                                )),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle,
                              color: HexColor('#98CE63'),
                            )),
                        Spacer(),
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Note Title',style: TextStyle(color: HexColor('#111111'),fontSize:13,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),),
                            SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of theprinting and typesetting industry. LoremIpsum has been the industry’s standarddummy text ever since the 1500s',
                                  style: TextStyle(fontSize: 12,fontFamily: 'Quicksand',fontWeight: FontWeight.w500,color: HexColor('#A5A5A5')),
                                )),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle,
                              color: HexColor('#C4C4C4'),
                            )),
                        Spacer(),
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Note Title',style: TextStyle(color: HexColor('#111111'),fontSize:13,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),),
                            SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of theprinting and typesetting industry. LoremIpsum has been the industry’s standarddummy text ever since the 1500s',
                                  style: TextStyle(fontSize: 12,fontFamily: 'Quicksand',fontWeight: FontWeight.w500,color: HexColor('#A5A5A5')),
                                )),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle,
                              color: HexColor('#98CE63'),
                            )),
                        Spacer(),
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                        SizedBox(width: 17),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Note Title',style: TextStyle(color: HexColor('#111111'),fontSize:13,fontFamily: 'Quicksand',fontWeight: FontWeight.w500),),
                            SizedBox(
                                height: 80,
                                width: 300,
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of theprinting and typesetting industry. LoremIpsum has been the industry’s standarddummy text ever since the 1500s',
                                  style: TextStyle(fontSize: 12,fontFamily: 'Quicksand',fontWeight: FontWeight.w500,color: HexColor('#A5A5A5')),
                                )),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.check_circle,
                              color: HexColor('#C4C4C4'),
                            )),
                        Spacer(),
                        Container(
                          color: HexColor('#6A90F2'),
                          height: 115,
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
