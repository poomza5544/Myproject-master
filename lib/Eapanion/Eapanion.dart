import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:untitled/compoment/Cart_product.dart';
import 'package:untitled/compoment/checkbox.dart';

class Eapanion extends StatefulWidget {
  const Eapanion({Key? key}) : super(key: key);

  @override
  _EapanionState createState() => _EapanionState();
}

class _EapanionState extends State<Eapanion> {
  bool _switchValue = false;
  bool _switchValue1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NameStore(),
        Cart_Product(),
        NameStore(),
        Cart_Product(),
      ],
    );
  }

  Container NameStore() {
    return Container(
      height: 30,
      width: 500,
      color: Colors.orangeAccent[100],
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          checkbox(),
          SizedBox(
            width: 10,
          ),
          Text('1. shopee',style: TextStyle(fontSize: 14),),
          SizedBox(
            width: 40,
          ),
          Text('ตีลัง',style: TextStyle(fontSize: 14),),
          _CupertinoSwitch(),
          SizedBox(width: 5),
          Text('เช็คสินค้า',style: TextStyle(fontSize: 14),),
          _CupertinoSwitch1(),
        ],
      ),
    );
  }

  Transform _CupertinoSwitch() {
    return Transform.scale(
      scale: 0.7,
      child: CupertinoSwitch(
        value: _switchValue,
        onChanged: (bool value) {
          setState(() {
            _switchValue = value;
          });
        },
      ),
    );
  }

  Transform _CupertinoSwitch1() {
    return Transform.scale(
      scale: 0.7,
      child: CupertinoSwitch(
        value: _switchValue1,
        onChanged: (bool value) {
          setState(() {
            _switchValue1 = value;
          });
        },
      ),
    );
  }
}

