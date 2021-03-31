import 'package:feal_app/components/horizontal_listview.dart';
import 'package:flutter/material.dart';

class Toolhorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget>[
          Category(
            image_location: 'images/toolscat/drill.png',
            image_caption: 'Cordless drill',
          ),
          Category(
            image_location: 'images/toolscat/drilling.jpeg',
            image_caption: 'Drilling machine',
          ),
          Category(
            image_location: 'images/toolscat/hamer.png',
            image_caption: 'Hammer drill',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(22.0),
      child: InkWell(onTap: (){
      },
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 70.0,
              height: 70.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 15.0),),
            ),
          ),
        ),
      ),);
  }
}
