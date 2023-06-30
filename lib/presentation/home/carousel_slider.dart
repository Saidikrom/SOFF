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
  final List<String> saleList = [
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/10 (1).png",
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/20.png",
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/40.png",
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/60.png",
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/70.png",
    "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/90.png",
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
                          offset: Offset(0.0, 30),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Stack(
                        children: [
                          Image.network(item, fit: BoxFit.cover, width: 350),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                                saleList[imgList.indexOf(item)],
                                fit: BoxFit.cover,
                                width: 100),
                          ),
                          // Positioned(
                          //   bottom: 0.0,
                          //   left: 0.0,
                          //   right: 0.0,
                          //   child: Image(
                          //     image: NetworkImage(
                          //       // saleList[imgList.indexOf(item)],
                          //       "https://github.com/Saidikrom/images/raw/Saidikrom/sale%20off/10 (1).png",
                          //       scale: .5,
                          //     ),
                          //     fit: BoxFit.cover,
                          //     width: 10,
                          //     height: 10,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
