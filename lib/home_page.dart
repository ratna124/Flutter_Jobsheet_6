import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Item.dart';
import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(bunga: 'Tulip', price: 20000, image: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJkmiwgiYdbR_YA0QW7XIaJi38VEu17MlAvw&usqp=CAU')),
    Item(bunga: 'Rose', price: 20000, image:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLiZnLkTmpn2mwwlvs1Z_U8z5bH1XbnFSQuQ&usqp=CAU')),
    Item(bunga: 'Peony', price: 20000, image:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_CMgQu1npbAde2nbod6w1VX5qHVP0bbIw4g&usqp=CAU')),
    Item(bunga: 'Daisy', price: 13000, image:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPL0pYb9w1-SHDVfA3h_IXoYQY425TIglzdA&usqp=CAU')),
    Item(bunga: 'Caktus', price: 15000, image:  Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNpfD1LIiu001sa10-yTVP62JAh16AFcBzrw&usqp=CAU')),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
            appBar: AppBar(
              title: Text("Les Fleurs Shop"),
              centerTitle: true,
            ),
            body:
              Container(
              margin: EdgeInsets.all(8),
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return InkWell(
                      onTap: () {
                        //  Navigator.pushNamed(context, '/item');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemPage(tempItem: item)),
                        );
                      },
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Text(item.bunga)),
                              Expanded(
                                  child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
            )
            );
  }
}
