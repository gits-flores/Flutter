import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  final String assetImage;
  final String title;
  final String desc;
  final String buttonTitle;
  final Function button;
  final Function saveButton;
  final Color colorImage;
  const CardBody({Key key, this.assetImage, this.title, this.desc, this.buttonTitle, this.button, this.saveButton, this.colorImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(left: 12, right: 16),
                decoration: BoxDecoration(
                    color: colorImage,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset(assetImage, height: 40, width: 40,fit: BoxFit.cover,),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget> [
                      Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), maxLines: 3,),
                      Text(desc, style: TextStyle(fontSize: 12, color: Colors.grey),)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
             Padding(
               padding: const EdgeInsets.only(left: 8),
               child: SaveButton(saveButton: saveButton),
             ),
              TextButton(onPressed: (){button;}, child: Text(buttonTitle, style: TextStyle(color: Color(0xFF007C90), fontSize: 18),))
            ],
          )
        ],
      ),
    );
  }
}


class SaveButton extends StatefulWidget {
  final Function saveButton;
  const SaveButton({Key key, this.saveButton}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
          widget.saveButton;
        });
      },
      icon: Icon(
        isFavorite ? Icons.bookmark : Icons.bookmark_outline,
        color: Color(0xFF007C90),
      ),
    );
  }
}
