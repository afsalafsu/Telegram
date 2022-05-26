// To parse this JSON data, do
//
//     final telegrammod = telegrammodFromJson(jsonString);

import 'dart:convert';

Telegrammod telegrammodFromJson(String str) => Telegrammod.fromJson(json.decode(str));

String telegrammodToJson(Telegrammod data) => json.encode(data.toJson());

class Telegrammod {
    Telegrammod({
        required this.avatar,
        required this.name,
        required this.lastmessage,
        required this.time,
    });

    String avatar;
    String name;
    String lastmessage;
    String time;

    factory Telegrammod.fromJson(Map<String, dynamic> json) => Telegrammod(
        avatar: json["avatar"],
        name: json["name"],
        lastmessage: json["lastmessage"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "lastmessage": lastmessage,
        "time": time,
    };
}