import 'package:flutter/material.dart';

class searchg extends StatelessWidget {
  const searchg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                  color: Color(0xFFF4F4F4),// set border color
                  width: 2.0),   // set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(30.0)
              ), // set rounded corner radius
            ),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'ค้นหาวลีช่วยจำ',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
