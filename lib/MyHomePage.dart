import 'ProductBox.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Tech in your hand")),
          body: ListView(

            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
            children: <Widget>[
              ProductBox(
                  name: "iPhone",
                  description: "iPhone is the stylist phone ever",
                  price: 1000,
                  image: "https://pngimg.com/uploads/iphone_12/iphone_12_PNG36.png"
              ),
              ProductBox(
                  name: "Pixel",
                  description: "Pixel is the most featureful phone ever",
                  price: 800,
                  image: "https://m.media-amazon.com/images/I/713N4SwTtKL._AC_SX522_.jpg"
              ),
              ProductBox(
                  name: "Laptop",
                  description: "Laptop is most productive development tool",
                  price: 2000,
                  image: "https://png.pngtree.com/png-clipart/20210227/ourlarge/pngtree-laptop-png-png-image_2961960.jpg"
              ),
              ProductBox(
                  name: "Tablet",
                  description: "Tablet is the most useful device ever for meeting",
                  price: 1500,
                  image: "https://pngimg.com/uploads/tablet/tablet_PNG8567.png"
              ),
              ProductBox(
                  name: "Pendrive",
                  description: "Pendrive is useful storage medium",
                  price: 100,
                  image: "https://www.pngmart.com/files/7/USB-Pen-Drive-PNG-Free-Download.png"
              ),
              ProductBox(
                  name: "Floppy Drive",
                  description: "Floppy drive is useful rescue storage medium",
                  price: 20,
                  image: "https://pngimg.com/uploads/floppy_disk/small/floppy_disk_PNG29.png"
              ),

            ],
          )
      ),
    );
  }
}
