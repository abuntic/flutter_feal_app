import 'package:flutter/material.dart';

import 'package:feal_app/components/tools_horizontalview.dart';

class Tools extends StatefulWidget {
  @override
  _ToolsState createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey,
        title: Text('Tools',style: new TextStyle(color: Colors.white),),
        actions:<Widget> [
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed:(){})
        ],
      ),


        body: new Column(
          children: <Widget>[
            Toolhorizontal(),
          ],

        ),
    );
  }
}
