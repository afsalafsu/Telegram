import 'package:flutter/material.dart';
import 'package:telegram/widget/chatdata_widget.dart';

class Userchat extends StatefulWidget {
  Userchat({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  State<Userchat> createState() => _UserchatState();
}

class _UserchatState extends State<Userchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff0088cc),
          title: Text(widget.name),
          actions: [
            Icon(Icons.call),
            PopupMenuButton(
              itemBuilder: (popup) {
                return [
                  PopupMenuItem(
                    child: Text("New Group"),
                    onTap: () {
                      print("New Group");
                    },
                  ),
                  PopupMenuItem(child: Row(
                    children: [
                      Icon(Icons.video_call,color: Colors.black,),
                      Text("video call"),
                    ],
                  )),
                  PopupMenuItem(child: Row(
                    children: [
                      Icon(Icons.search,color: Colors.black,),
                      Text("search"),
                    ],
                  )),
                  PopupMenuItem(child: Text("Clear history")),
                  PopupMenuItem(child: Text("change colors")),
                  PopupMenuItem(child: Text("Mute forever")),
                  PopupMenuItem(child: Text("Delete chat"))
                ];
              },
            )
          ]),
      body: Chatdata(),
    );
  }
}
