import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/list_topik_jelajah.dart';

class JelajahScreen extends StatefulWidget {
  const JelajahScreen({Key key}) : super(key: key);

  @override
  State<JelajahScreen> createState() => _JelajahScreenState();
}

class _JelajahScreenState extends State<JelajahScreen> {

  String descSatu = "Dapatkan tips, saran, dan wawasan mendalam tentang berbagai topik";
  String descDua = "Temukan bagaimana kepribadian Anda memengaruhi kebiasaan Anda";


  void dummyPindah(String title, desc){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ListTopikJelajah(
            titleAppbar: title,
            desc: desc,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 12, left: 8, right: 8, top: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: <Widget>[
                  SizedBox(height: 12,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 12),
                            child: Text("Artikel", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Text(descSatu, style: TextStyle(fontSize: 16, color: Colors.grey),),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF007C90),
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )
                                ),
                                onPressed: (){dummyPindah("Artikel", descSatu);},
                                child: Text("BACA SEKARANG")),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/jelajahsatu.png", width: 185, height: 170,)
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 12, left: 8, right: 8, top: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: <Widget>[
                  SizedBox(height: 12,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 12),
                            child: Text("Survey", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Text(descDua, style: TextStyle(fontSize: 16, color: Colors.grey),),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF007C90),
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )
                                ),
                                onPressed: (){dummyPindah("Survey", descDua);},
                                child: Text("TES SEKARANG")),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/jelajahdua.png")
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(bottom: 12, left: 8, right: 8, top: 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: <Widget>[
                  SizedBox(height: 12,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 12),
                            child: Text("Tipe Kepribadian", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Text("Memahami arti dan dampak dari ciri-ciri kepribadian", style: TextStyle(fontSize: 16, color: Colors.grey),),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF007C90),
                                    textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )
                                ),
                                onPressed: (){},
                                child: Text("COMING SOON")),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image.asset("assets/images/jelajahtiga.png")
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
