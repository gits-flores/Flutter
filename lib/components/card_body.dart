
import 'package:flutter/material.dart';

class CardBody extends StatefulWidget {
  final String assetImage;
  final String title;
  final String desc;
  final String buttonTitle;
  final Function button;
  final Function saveButton;
  final Color colorImage;
  final bool state;
  final Widget detail;
  const CardBody({Key key, this.assetImage, this.title, this.desc, this.buttonTitle, this.button, this.saveButton, this.colorImage, this.state, this.detail}) : super(key: key);

  @override
  State<CardBody> createState() => _CardBodyState();
}

class _CardBodyState extends State<CardBody> {
  void readContent(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return widget.detail;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
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
                      color: widget.colorImage,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(widget.assetImage, height: 40, width: 40,fit: BoxFit.cover,),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget> [
                        Text(widget.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), maxLines: 3,),
                        Text(widget.desc, style: TextStyle(fontSize: 12, color: Colors.grey),)
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
                 child: SaveButton(saveButton: widget.saveButton, state: widget.state,),
               ),
                TextButton(onPressed: (){
                  if(widget.detail != null){
                    readContent();
                  }else{

                  }
                  }, child: Text(widget.buttonTitle, style: TextStyle(color: Color(0xFF007C90), fontSize: 18),))
              ],
            )
          ],
        ),
      ),
    );
  }
}


class SaveButton extends StatefulWidget {
  final Function saveButton;
  final bool state;
  const SaveButton({Key key, this.saveButton, this.state}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool isFavorite = false;

  @override
  void initState(){
    super.initState();
    if(widget.state == null){
      setState(() {
        isFavorite = false;
      });
    }else{
      setState(() {
        isFavorite = widget.state;
      });
    }
  }

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
