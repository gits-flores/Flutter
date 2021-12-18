import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Topik/MateriTopik/rate_topik.dart';

class MateriTopik extends StatefulWidget {
  final String titleAppbar;
  const MateriTopik({Key key, this.titleAppbar}) : super(key: key);

  @override
  _MateriTopikState createState() => _MateriTopikState();
}

class _MateriTopikState extends State<MateriTopik> {
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:<Widget>[
                      Image.asset("assets/images/personal_growth_satu.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 12),
                        child: Text("Menembus Rintangan Untuk Belajar dan Menemukan Potensi Tersembunyi Anda", style: TextStyle(color: Colors.black, fontSize: 20),),
                      ),
                      Text("Menembus Rintangan Untuk Belajar dan Menemukan Potensi Tersembunyi Anda", style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  ),
                )
              ),
            ),
            Positioned(
              bottom: 12,
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:<Widget> [
                 IconButton(onPressed:(){

                 },
                     icon: Icon(Icons.skip_previous_outlined)
                 ),
                 IconButton(onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) {
                         return RateTopik();
                       },
                     ),
                   );
                 },
                     icon: Icon(Icons.skip_next_outlined)
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
