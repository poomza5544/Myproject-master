import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class priceandname extends StatefulWidget {
  const priceandname({Key? key}) : super(key: key);

  @override
  _priceandnameState createState() => _priceandnameState();
}

class _priceandnameState extends State<priceandname> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          width: 500,
          height: 115,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '¥12.5-33.8',
                style: TextStyle(
                    fontSize: 20, color: Colors.deepOrangeAccent),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Macbook Air 13: M1 '),
                      SizedBox(height: 6,),
                      Text('data'),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.link,
                        color: Colors.black54,
                        size: 15,
                      ),
                      onPressed: () {}),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('จำนวนที่ขายได้:'),
                  SizedBox(width: 260,),
                  Text('100'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
