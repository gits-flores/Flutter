import 'package:flutter/material.dart';

class HeaderTopik extends StatelessWidget {
  final Color color;
  final String title;
  final String desc;
  final Color textColor;
  const HeaderTopik({Key key, this.color, this.title, this.desc, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      color: color,
      padding: EdgeInsets.only(left: size.width * 0.05, right: size.width *0.05, top: size.height * 0.1, bottom: size.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget> [
          Text(title, style: TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold),),
          Text(
            desc, style: TextStyle(
              fontSize: 18, color: textColor),
            maxLines: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget> [
                  Text(title+" bermasalah?", style: TextStyle(color: textColor),),
                  TextButton(
                      onPressed: (){}, child: Text("laporkan"))
                ],
              ),
              Icon(
                Icons.flag_outlined,
                color: textColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
