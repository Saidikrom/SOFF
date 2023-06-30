
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class ProductImageSlider extends StatelessWidget {
  final int length;
  final List list;

  const ProductImageSlider(
      {super.key, required this.length, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
          enableAutoSlider: length == 1 ? false : true,
          unlimitedMode: length == 1 ? false : true,
          autoSliderTransitionTime: Duration(milliseconds: 500),
          slideBuilder: (index) {
            return Container(
              height: 540,
              alignment: Alignment.center,
              // color: imgList[index],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      list[index],
                    ),
                    fit: BoxFit.cover),
              ),
            );
          },
          slideIndicator: CircularSlideIndicator(
            indicatorRadius: 5,
            padding: EdgeInsets.only(bottom: 20),
          ),
          itemCount: length),
    );
  }
}
