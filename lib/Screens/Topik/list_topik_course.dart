import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/dummy/dummy_topik.dart';
import 'package:flutter_login/components/card_body.dart';
import 'package:flutter_login/components/header_topik.dart';

class ListTopikCourse extends StatefulWidget {
  final String titleAppbar;
  final String desc;
  const ListTopikCourse({Key key, this.titleAppbar, this.desc}) : super(key: key);

  @override
  _ListTopikCourseState createState() => _ListTopikCourseState();
}

class _ListTopikCourseState extends State<ListTopikCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text(widget.titleAppbar, style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFF6F6F6),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            HeaderTopik(
              color: Color(0xFFF6F6F6),
              title: widget.titleAppbar,
              textColor: Colors.black,
              desc: widget.desc,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index){
                final dummyTopik dmy = dummyTopikCourse[index];
                return CardBody(
                  assetImage: dmy.assetImage,
                  title: dmy.title,
                  desc: dmy.desc,
                  buttonTitle: dmy.buttonTitle,
                  colorImage: Color(0xFF007C90),
                );
              },
              itemCount: dummyTopikCourse.length,
            ),
          ],
        ),
      )
    );
  }
}

