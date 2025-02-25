import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Game {
  String name;
  String img;
  String id;

  Game({
    required this.id,
    required this.name,
    required this.img,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      name: json['data']['name'],
      img: json['data']['img'],
    );
  }
}
