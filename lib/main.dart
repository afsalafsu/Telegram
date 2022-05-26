import 'package:flutter/material.dart';
import 'package:telegram/pages/chatpagemain.dart';

void main() {
  runApp(Telegram());
}

class Telegram extends StatelessWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Telegram Home",
      home: Telegramhome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Telegramhome extends StatefulWidget {
  const Telegramhome({Key? key}) : super(key: key);

  @override
  State<Telegramhome> createState() => _TelegramhomeState();
}

class _TelegramhomeState extends State<Telegramhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
           Drawer();
          },
        ),
        title: Text("Telegram"),
        backgroundColor: Color(0xff0088cc),
        //actions: [IconButton(
        // onPressed: (){
        //   print("Menu");
        //   },
        //icon: Icon(Icons.menu))
        // ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Afsal"),
              accountEmail: Text("abc@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text("Group"),
            ),
          ],
        ),
      ),
      body: Chatpage(),
    );
  }
}
