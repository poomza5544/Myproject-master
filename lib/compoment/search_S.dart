import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchS extends StatelessWidget {
  const searchS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(40),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(0)),
          ),
          border: OutlineInputBorder(),
          hintText: 'วางลิงค์ที่ค้นหา',
          icon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        ),
      ),
    );
  }
}
