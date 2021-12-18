import 'package:flutter/material.dart';

class RangkumanScreen extends StatelessWidget {
  const RangkumanScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Rangkuman Topik"),
        centerTitle: true,
        backgroundColor: Color(0xFF007C90),
        foregroundColor: Colors.white,
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: Color(0xFF007C90),
              padding: EdgeInsets.only(left: size.width*0.1, right: size.width*0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [
                  Text("Menembus Rintangan untuk Belajar dan Menemukan Potensi Tersembunyi Anda",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text("Oleh Tim Personaliti",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                    ),
                  ),
                  SizedBox(height: 12,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                    onPressed: () {

                    },
                    child: Text("Ulangi Topik", style: TextStyle(fontSize: 16, color: Color(0xFF007C90),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children:<Widget> [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Color(0xFF1967D3),
                        ),
                        child: Icon(Icons.text_snippet_outlined, color: Colors.white,),
                      ),
                      SizedBox(width: 12,),
                      Text("POIN UTAMA", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children:<Widget> [
                      Text("28 Desember 2021", style: TextStyle(fontSize: 14),),
                      SizedBox(width: 8,),
                      Icon(Icons.assignment_sharp)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
              child: Text("lorem ipsum"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF007C90),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Kembali", style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
