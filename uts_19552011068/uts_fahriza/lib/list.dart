import 'dart:convert';
import 'package:flutter/material.dart';

Listproduct listFromJson(String str) =>
    Listproduct.fromJson(json.decode(str));

String listToJson(Listproduct data) => json.encode(data.toJson());

class Listproduct {
  Listproduct({
    required this.name,
    required this.colour,
    required this.price,
    required this.pict,
  });

  String name;
  Color colour;
  String price;
  String pict;

  factory Listproduct.fromJson(Map<String, dynamic> json) => Listproduct(
        name: json["name"],
        colour: json["colour"],
        price: json["price"],
        pict: json["pict"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "colour": colour,
        "price": price,
        "pict": pict,
      };
}
