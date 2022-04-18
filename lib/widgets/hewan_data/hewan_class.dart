import 'package:flutter/material.dart';

class HewanClass {
  final String? name;
  final int? price;
  final String? promotionPhoto;
  final String? photo1;
  final String? photo2;

  HewanClass({
    @required this.name,
    @required this.price,
    @required this.promotionPhoto,
    this.photo1,
    this.photo2,
  });
}
