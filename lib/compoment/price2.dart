import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class pricename2 extends StatefulWidget {
  const pricename2({Key? key}) : super(key: key);

  @override
  _pricename2State createState() => _pricename2State();
}

class _pricename2State extends State<pricename2> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          width: 500,
          height: 150,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Macbook Pro M1',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'fgkotgo4ptpl4pt4t4fedwfwfewefwfwrrw',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '¥ 25.00',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '(฿131.00)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text('5-99ชิ้น'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '¥ 20.00',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '(฿104.80)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text('100-9999ชิ้น'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '¥ 18.00',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '(฿94.32)',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text('>=10,000ชิ้น'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
