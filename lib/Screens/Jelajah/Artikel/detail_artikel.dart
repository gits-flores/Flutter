import 'package:flutter/material.dart';

class DetailArtikel extends StatefulWidget {
  final String title;
  const DetailArtikel({Key key, this.title}) : super(key: key);

  @override
  State<DetailArtikel> createState() => _DetailArtikelState();
}

class _DetailArtikelState extends State<DetailArtikel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Color(0xFFF6F6F6),
        foregroundColor: Colors.black,
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: Color(0xFFF6F6F6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget> [
                  Image.asset("assets/images/artikel_img.png", width: size.height* 0.48, height: size.height*0.22,),
                  Text(widget.title, style: TextStyle(color: Colors.black, fontSize: 20),),
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
                      Text("Deni Alfian", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children:<Widget> [
                      Text("28 Desember 2021", style: TextStyle(fontSize: 14),),
                      SizedBox(width: 8,),
                      Icon(Icons.access_time_sharp)
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
