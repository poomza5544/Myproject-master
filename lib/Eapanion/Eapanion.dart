import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:untitled/compoment/checkbox.dart';
import 'package:untitled/compoment/count.dart';

class Eapanion extends StatefulWidget {
  const Eapanion({Key? key}) : super(key: key);

  @override
  _EapanionState createState() => _EapanionState();
}

class _EapanionState extends State<Eapanion> {
  bool _switchValue = false;
  bool _switchValue1 = false;
  bool isChecked1 = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NameStore(),
        Store(),
        NameStore(),
        Store(),
      ],
    );
  }

  Container NameStore() {
    return Container(
      height: 40,
      width: 500,
      color: Colors.orangeAccent[100],
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          checkbox(),
          SizedBox(
            width: 15,
          ),
          Text('1. shopee'),
          SizedBox(
            width: 40,
          ),
          Text('ตีลัง'),
          _CupertinoSwitch(),
          SizedBox(width: 10),
          Text('เช็คสินค้า'),
          _CupertinoSwitch1(),
        ],
      ),
    );
  }

  Transform _CupertinoSwitch() {
    return Transform.scale(
      scale: 0.8,
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
      scale: 0.8,
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

class Store extends StatefulWidget {
  const Store({
    Key? key,
  }) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  bool isChecked1 = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      width: 500,
      color: Color(0xFFFFF9F4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 15,
          ),
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
          SizedBox(
            width: 5,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'asste/bag.jpg',
              width: 20,
              height: 20,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                'Playstation5 PS5 Disc',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text('สี: ขาว',style: TextStyle(fontSize: 12),),
                  SizedBox(
                    width: 40,
                  ),
                  Text('ขนาด:',style: TextStyle(fontSize: 12),),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  Text('ไฟล์แนบ:',style: TextStyle(fontSize: 12),),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'asste/bag.jpg',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 20,),
                  Text('หมายเหตุ:...',style: TextStyle(fontSize: 12),),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '฿ 32,000',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 17,
                ),
              ),
              Count(
                count: count,
                onCountCountChange: (int val) => setState(()=>count += val),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
