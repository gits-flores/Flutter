import 'package:flutter/material.dart';
import 'package:flutter_login/components/card_body.dart';
import 'package:flutter_login/components/header_topik.dart';

import 'dummy/dummy_topik.dart';

class ListTopikJelajah extends StatefulWidget {
  final String titleAppbar;
  final String desc;
  const ListTopikJelajah({Key key, this.titleAppbar, this.desc}) : super(key: key);

  @override
  _ListTopikJelajahState createState() => _ListTopikJelajahState();
}

class _ListTopikJelajahState extends State<ListTopikJelajah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Text(widget.titleAppbar, style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF1967D3),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              HeaderTopik(
                color: Color(0xFF1967D3),
                title: widget.titleAppbar,
                textColor: Colors.white,
                desc: widget.desc,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  final dummyTopik dmy = dummyTopikJelajah[index];
                  return CardBody(
                    assetImage: dmy.assetImage,
                    title: dmy.title,
                    desc: dmy.desc,
                    buttonTitle: dmy.buttonTitle,
                    colorImage: Color(0xFF0F56B3),
                  );
                },
                itemCount: dummyTopikJelajah.length,
              ),
            ],
          ),
        )
    );
  }
}
