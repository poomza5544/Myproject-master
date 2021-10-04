import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Product_details extends StatefulWidget {
  const Product_details({Key? key}) : super(key: key);

  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          height: 60,
          width: 500,
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 5 ,horizontal: 5),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text('ชื่อร้านค้า:'),

              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,))
            ],
          ),
        ),
      ],
    );
  }
}
