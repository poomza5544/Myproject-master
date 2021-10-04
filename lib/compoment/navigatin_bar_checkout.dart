import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

import 'Button2.dart';
class Navigation_checkout extends StatefulWidget {
  const Navigation_checkout({Key? key}) : super(key: key);

  @override
  _Navigation_checkoutState createState() => _Navigation_checkoutState();
}

class _Navigation_checkoutState extends State<Navigation_checkout> {
  bool switchState = false;
  bool switchState1 = false;
  bool isChecked = false;
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)
        ),
      ),
      child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '฿ 32,000',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 25,
                    ),
                  ),
                  Text('≈ ¥ 6,370.27'),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('เลือกขนส่งสินค้า:'),
                      SizedBox(width: 10,),
                      GFCheckbox(
                        size: 22,
                        activeBgColor: Colors.deepOrange,
                        inactiveBorderColor: Colors.black26,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                        value: isChecked,
                        inactiveIcon: null,
                      ),
                      SizedBox(width: 10,),
                      Image.asset('asste/delivery_truck.png',
                      width: 30, height: 30,),
                      SizedBox(width: 20,),
                      GFCheckbox(
                        size: 22,
                        activeBgColor: Colors.deepOrange,
                        inactiveBorderColor: Colors.black26,
                        type: GFCheckboxType.circle,
                        onChanged: (value) {
                          setState(() {
                            isChecked1 = value;
                          });
                        },
                        value: isChecked1,
                        inactiveIcon: null,
                      ),
                      SizedBox(width: 10,),
                      Image.asset('asste/ship.png',width: 30,height: 30,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Button2(onPressed: () {  },),
                ],
              ),
            ],
          ),
    );
  }
}

