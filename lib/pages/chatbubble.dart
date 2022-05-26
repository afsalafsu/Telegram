import 'package:flutter/material.dart';
import 'package:telegram/models/messagemodel.dart';

class Chatbubble extends StatelessWidget {
  Chatbubble({Key? key, required this.msgdata}) : super(key: key);
  Messagemodel msgdata;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: msgdata.issent? Alignment.centerRight: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width-50),
        child: Card(
          color: msgdata.issent ? Colors.blue : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 20, 30),
                child: Text(
                  msgdata.message, 
                  style: msgdata.issent? TextStyle(color: Colors.white):TextStyle(color: Colors.black)),
              ),
              Positioned(
                right: 5,
                bottom: 4,
                child: Row(
                  children: [
                    Text(
                      msgdata.time,
                      style: TextStyle(color: msgdata.issent? Colors.white: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    msgdata.issent
                        ? Icon(
                           msgdata.isread? Icons.done_all:Icons.done,
                            size: 15,
                            color: Colors.white,
                          )
                        : Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
