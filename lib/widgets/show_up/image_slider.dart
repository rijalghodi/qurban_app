import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:purple_qurban_project/widgets/show_up/image_slider_list.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
        ),
        items: imageSliderList
            .map(
              (e) => Image.asset(
                e,
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
