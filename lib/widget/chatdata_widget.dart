import 'package:flutter/material.dart';
import 'package:telegram/models/messagemodel.dart';
import 'package:telegram/pages/chatbubble.dart';
class Chatdata extends StatelessWidget {
   Chatdata({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("asset/images/telbg1.png",width: MediaQuery.of(context).size.width, fit: BoxFit.fill),
         ListView.builder(
          itemBuilder: (context, index)
          {
           return Chatbubble(msgdata: msg[index]);
          },
          itemCount: msg.length,
             ),        
      ],
      
    );
  }
}
List <Messagemodel> msg=[
    Messagemodel(message: "Helo", time: "9.50", issent: true, isread: true),
    Messagemodel(message: "hi", time: "9.52", issent: false, isread: false),
    Messagemodel(message: "how are you,are you okay", time: "9.53", issent: true, isread:false),
    Messagemodel(message: "fine", time: "9.54", issent: false, isread: false),

  ];