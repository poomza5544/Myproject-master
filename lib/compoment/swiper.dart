import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiper_image extends StatefulWidget {
  const swiper_image({Key? key}) : super(key: key);

  @override
  _swiper_imageState createState() => _swiper_imageState();
}

class _swiper_imageState extends State<swiper_image> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
          },
        loop: true,
        autoplay: true,
        itemCount: 6,
        pagination: new SwiperPagination(
          builder: new DotSwiperPaginationBuilder(
            activeColor: Colors.deepOrangeAccent
          ),
        ),
        control: new SwiperControl(
          color: Colors.deepOrangeAccent
        ),
      ),
    );
  }
}
