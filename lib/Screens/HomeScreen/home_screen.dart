import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/list_topik_course.dart';

import 'home_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context){
  Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children:<Widget> [
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.person_pin, size: 40,),
                    )),
                Text("Modul Pilihan", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),),
                Text("Personalities", style: TextStyle(fontSize: 23),),
                SizedBox(height: 20,),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    final HomeMenu homeMenu = homeMenuList[index];
                    return InkWell(
                      onTap: (){},
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:<Widget> [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8, top: 12),
                                        child: Text(homeMenu.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 12),
                                        child: Text(homeMenu.desc, style: TextStyle(fontSize: 16),),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                             primary: Color(0xFF007C90),
                                              textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              )
                                            ),
                                            onPressed: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return ListTopikCourse(
                                                      titleAppbar: homeMenu.title,
                                                      desc: "Module "+homeMenu.desc,
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                            child: Text("PELAJARI")),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: Image.asset(homeMenu.images, width: 185, height: 170,)),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: homeMenuList.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
