import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image}) :
super(key: key);
final String name;
final String description;
final int price;
final String image;

Widget build(BuildContext context) {
  return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Image.network(image,width: 150,height: 100),
                Expanded(
                  
                    child: Container(
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(color: Colors.amberAccent),
                        padding: EdgeInsets.all(2),
                        child: Column(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              
                                this.name, style: TextStyle(
                                fontWeight: FontWeight.bold,
                              color: Colors.black38
                            )
                            ),
                            Text(this.description,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal
                                )
                            ), Text(
                                "Price: " + this.price.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pink
                                )

                            ),
                          ],
                        )
                    )
                )
              ]
          )
      )
  );
}
}