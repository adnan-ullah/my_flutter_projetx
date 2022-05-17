import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'MySettings.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: Homepage_Setting(),
    );
  }
}


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var count = 0;
  void answerFunction() {
    setState((){
      count = count+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    var  questionList = ["Whats your name?", "Whats country name?"];
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: const Text("Enigma Env"),backgroundColor: Colors.pink),
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Text(questionList.elementAt(count)),
              ElevatedButton(  onPressed: answerFunction, child: Text('Answer 1!')),
              ElevatedButton(onPressed: ()=>print("Q2, wrng!"), child: Text("Answer 2!")),
              ElevatedButton(onPressed: ()=>print("Q3, wrng!"), child: Text("Answer 3!")),
              ElevatedButton(onPressed: ()=>print("Q4, wrng!"), child: Text("Answer 4!")),

            ],
          ),
      ),),
    );
  }


}



