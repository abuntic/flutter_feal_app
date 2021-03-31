import 'package:dio/dio.dart';
import 'package:feal_app/pages/apparel.dart';
import 'package:feal_app/pages/computers.dart';
import 'package:feal_app/pages/digital.dart';
import 'package:feal_app/pages/tools.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
    Future<List> category;
    Future<List>getCategories() async{
      var response= await Dio().get('http://shop.galileo.ba/api/categories?createdAtMin=2021-03-30T10%3A57%3A23.108Z&createdAtMax=2021-03-30T10%3A57%3A23.108Z&updatedAtMin=2021-03-30T10%3A57%3A23.108Z&updatedAtMax=2021-03-30T10%3A57%3A23.108Z&publishedStatus=true&productId=0&ids=0&limit=0&page=0&sinceId=0&fields=string');
      return response.data;
    }

    @override
    void initState(){
      category=getCategories();

      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: new AppBar(
        elevation: 10,

        backgroundColor: Colors.blueGrey,
        title: Text('Categories',style: new TextStyle(color: Colors.white),),
        actions:<Widget> [
          new IconButton(icon: Icon(Icons.favorite_border,
            color: Colors.white,),
              onPressed: (){} ),
          new IconButton(icon: Icon(Icons.search,
            color: Colors.white,),
              onPressed: (){} ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children:<Widget> [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //===========Container 1=======================
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>new Tools()));
                      },
                    child: Container(
                      child:FittedBox(
                      child: Material(
                        color: Colors.white,
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Colors.white,
                        child: Row(
                          children:<Widget> [
                              Container(
                                child: Text("   TOOLS",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),)
                              ),
                                Container(
                                  width: 450,
                                  height: 250,
                                  child:ClipRRect(
                                    borderRadius: new BorderRadius.circular(10.0),
                                    child:Image(
                                      fit: BoxFit.fitHeight,
                                      alignment: Alignment.topRight,
                                      image: AssetImage("images/cats/tools.png",),

                                    ),
                                  ) ,
                                )

                          ],
                        ),

                      ),
                      ),
                    ),
                    ),
                  ),
                  //=========CONTAINER 2 ========
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>new Apparel()));
                      },
                    child: Container(
                      child:FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.blueGrey,
                          child: Row(
                            children:<Widget> [
                              Container(
                                  child: Text("  APPAREL",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),)
                              ),
                              Container(
                                width: 450,
                                height: 250,
                                child:ClipRRect(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  child:Image(
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("images/cats/apparel2.png"),
                                  ),
                                ) ,
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
              //=================CONTARINER 3====================
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>new Digital()));
                      },
                    child: Container(
                      child:FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(10.0),
                          shadowColor: Colors.blueGrey,
                          child: Row(
                            children:<Widget> [
                              Container(
                                  child: Text(" DIGITAL",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),)
                              ),
                              Container(
                                width: 450,
                                height: 250,
                                child:ClipRRect(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  child:Image(
                                    fit: BoxFit.contain,
                                    alignment: Alignment.topRight,
                                    image: AssetImage("images/cats/digital.png"),
                                  ),
                                ) ,
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                  //=================CONTARINER 4====================

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>new Computers()));
                      },
                      child: Container(
                        child:FittedBox(
                          child: Material(
                            color: Colors.white,
                            elevation: 14.0,
                            borderRadius: BorderRadius.circular(10.0),
                            shadowColor: Colors.blueGrey,
                            child: Row(
                              children:<Widget> [
                                Container(
                                    child: Text(" COMPUTERS",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),)
                                ),
                                Container(
                                  width: 450,
                                  height: 290,
                                  child:ClipRRect(
                                    borderRadius: new BorderRadius.circular(10.0),
                                    child:Image(
                                      fit: BoxFit.contain,
                                      alignment: Alignment.topRight,
                                      image: AssetImage("images/cats/computers.png",),
                                    ),
                                  ) ,
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
          )
        ],
      ),
    )
    );
  }

  /*Widget myDetailsContainer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:<Widget> [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Text("Tools",
          style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),),),
        )
      ],

    );
  }*/
}
