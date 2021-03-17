import 'package:flutter/material.dart';
import 'Item.dart';

class ItemPage extends StatelessWidget{
  final Item tempItem;
  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title:  Text("Flower"),
          centerTitle: true,
        ),
        body:
        Container(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                Text( 
                  "Name",  
                  style: TextStyle(fontSize: 20),
                ),
                Text( 
                  "Price", 
                  style: TextStyle(fontSize: 20), 
                ),
              ],
            ),
            Divider(),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                Text(tempItem.bunga),
                Text(tempItem.price.toString()),
              ],
            ),
            Divider(),
            Divider(),
                tempItem.image
          ]
          )
        )
    );
  }
}