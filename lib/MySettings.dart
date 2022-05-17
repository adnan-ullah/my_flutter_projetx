import 'package:flutter/material.dart';

class Homepage_Setting extends StatefulWidget {
  const Homepage_Setting({Key? key}) : super(key: key);

  @override
  State<Homepage_Setting> createState() => _Homepage_SettingState();
}

class _Homepage_SettingState extends State<Homepage_Setting> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.black54,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(right: 10, left: 10, top: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  ),
                          ))),
                  ContainerItems(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      text: Text(
                        "Notifications and Sounds",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.privacy_tip, color: Colors.white),
                      text: Text(
                        "Privacy and Security",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.sd_storage_rounded, color: Colors.white),
                      text: Text(
                        "Data and Storage",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon:
                          Icon(Icons.chat_bubble_rounded, color: Colors.white),
                      text: Text(
                        "Chat Settings",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.folder, color: Colors.white),
                      text: Text(
                        "Chat folders",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.devices_sharp, color: Colors.white),
                      text: Text(
                        "Devices",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.language, color: Colors.white),
                      text: Text(
                        "Language",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(right: 10, left: 10, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 40,
                          decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "Help",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ))),
                  ContainerItems(
                      icon: Icon(Icons.add_task, color: Colors.white),
                      text: Text(
                        "Ask a questions",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.telegram, color: Colors.white),
                      text: Text(
                        "Telegram",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  ContainerItems(
                      icon: Icon(Icons.question_answer, color: Colors.white),
                      text: Text(
                        "FAQ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerItems extends StatelessWidget {
  const ContainerItems({Key? key, required this.icon, required this.text})
      : super(key: key);

  final Icon icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: 50,
      child: ElevatedButton(
        onPressed: () => print("ADNAN"),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black87)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: text,
            ),
          ],
        ),
      ),
    );
  }
}
