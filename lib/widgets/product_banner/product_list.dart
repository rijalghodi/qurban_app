import 'package:purple_qurban_project/models/product_class.dart';
import 'package:flutter/material.dart';

final List<ProductClass> productList = [
  ProductClass(
    productIcon: Image.asset('image/product_banner/a.jpg'),
    productName: 'Qurban',
  ),
  ProductClass(
    productIcon: Image.asset('image/product_banner/b.jpg'),
    productName: 'Investasi Qurban',
  ),
  ProductClass(
    productIcon: Image.asset(
      'image/product_banner/c.jpg',
      fit: BoxFit.cover,
    ),
    productName: 'Paket Aqiqah',
  ),
  ProductClass(
    productIcon: Image.asset(
      'image/product_banner/d.jpg',
      fit: BoxFit.cover,
    ),
    productName: 'Aneka Masakan',
  ),
];
