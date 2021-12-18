import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/dummy/dummy_topik.dart';
import 'package:flutter_login/components/card_body.dart';

class DisimpanScreen extends StatefulWidget {
  const DisimpanScreen({Key key}) : super(key: key);

  @override
  State<DisimpanScreen> createState() => _DisimpanScreenState();
}

class _DisimpanScreenState extends State<DisimpanScreen>
  with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F6),
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 14),
          child: TabBar(
            controller: controller,
            labelColor: Color(0xFF0F56B3),
            indicatorColor: Color(0xFF0F56B3),
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.only(bottom: 15),
            indicatorPadding: EdgeInsets.only(top: 15),
            tabs: [
              Text("Topik", style: TextStyle(fontSize: 20),),
              Text("Artikel", style: TextStyle(fontSize: 20),),
              Text("Survey", style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children:<Widget> [
          SavedBody(colorImage: Color(0xFF007C90),),
          SavedBody( colorImage: Color(0xFF0F56B3),),
          SavedBody( colorImage: Color(0xFF597F2A),),
        ],
      )
    );
  }
}

class SavedBody extends StatefulWidget {
  final Color colorImage;
  const SavedBody({Key key, this.colorImage}) : super(key: key);

  @override
  _SavedBodyState createState() => _SavedBodyState();
}

class _SavedBodyState extends State<SavedBody> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index){
          final dummyTopik dmy = dummyTopikJelajah[index];
          return CardBody(
            assetImage: dmy.assetImage,
            title: dmy.title,
            desc: dmy.desc,
            buttonTitle: dmy.buttonTitle,
            colorImage: widget.colorImage,
            state: true,
          );
        },
        itemCount: dummyTopikJelajah.length,
      ),
    );
  }
}

