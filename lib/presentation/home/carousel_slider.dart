import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderW extends StatelessWidget {
  CarouselSliderW({super.key});

  final List<String> imgList = [
    'https://img.freepik.com/free-photo/mid-century-modern-living-room-interior-design-with-monstera-tree_53876-129804.jpg',
    'https://cb2.scene7.com/is/image/CB2/020323_super_furniture_3_M?wid=690&qlt=65',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://cb2.scene7.com/is/image/CB2/020323_super_furniture_6_M?wid=690&qlt=65',
    'https://www.englandfurniture.com/cid368/css/1000/images/11_6c00-cooper_sofa_detail.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE29k5DYtL_YbGlFlX-zufldUmBkXnWFkIXI3fuY8AQxdGeXqWQlm_pzXbiEhoOuk6nN0&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 300,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 10),
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imgList
            .map((item) => Container(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: -20,
                            color: Colors.black45,
                            blurRadius: 25,
                            offset: Offset(0.0, 30)),
                      ],
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child:
                            Image.network(item, fit: BoxFit.cover, width: 340)),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
