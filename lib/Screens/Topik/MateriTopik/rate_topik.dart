import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/MateriTopik/rangkuman_screen.dart';

class RateTopik extends StatefulWidget {
  const RateTopik({Key key}) : super(key: key);

  @override
  _RateTopikState createState() => _RateTopikState();
}

class _RateTopikState extends State<RateTopik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text("Selamat", style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xFFF6F6F6),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [
            Column(
              children:<Widget> [
                Text("Selamat, Bagaimana Topiknya?"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.emoji_emotions_outlined)),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.insert_emoticon)),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.emoji_emotions_outlined)),
                    ],
                  ),
                ),
              ],
            ),
            Image.asset("assets/images/personal_growth_satu.png"),
            TextButton(onPressed: (){},
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RangkumanScreen();
                        },
                      ),
                    );
                  },
                  child: Text("RANGKUMAN MATERI", style: TextStyle(fontSize: 20, color:Color(0xFF007C90),
                  ),),
                )),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text("Topik Selanjutnya", style: TextStyle(fontSize: 11, color: Colors.grey),),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 14),
                    child: Text("Menembus Rintangan untuk belajar Menemukan Potensi Anda", style: TextStyle(fontSize: 20, color: Colors.black),),
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
                        },
                        child: Text("PELAJARI")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
