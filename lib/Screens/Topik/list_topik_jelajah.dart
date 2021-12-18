import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Jelajah/Artikel/detail_artikel.dart';
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

  void readContent(String title){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return DetailArtikel(
            title: title
          );
        },
      ),
    );
  }

  Color warna(){
    if(widget.titleAppbar == "Artikel"){
      return Color(0xFF1967D3);
    }else{
      return Color(0xFF88C44A);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Text(widget.titleAppbar, style: TextStyle(color: Colors.white),),
          backgroundColor: warna(),
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: (){},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              HeaderTopik(
                color: warna(),
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
                    colorImage: warna(),
                    detail: DetailArtikel(title: dmy.title,),
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
