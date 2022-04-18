import 'package:flutter/material.dart';
import './image_slider.dart';
import '../../theme.dart';
import './product_detail.dart';

void main() {
  runApp(ShowUp());
}

class ShowUp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Produk'),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Column(
          children: [
            ImageSlider(),
            ProductDetail(),
          ],
        ),
      ),
    );
  }
}
