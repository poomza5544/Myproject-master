import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../checkout.dart';
import 'Button2.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool switchState = false;
  bool switchState1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white70,
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
                height: 10,
              ),
              Row(
                children: [
                  CupertinoSwitch(
                      value: switchState1,
                      onChanged: (bool value) {
                        setState(() {
                          switchState1 = value;
                        });
                      }),
                  Text('ชำระสินค้าทั้งหมด'),
                ],
              ),
              SizedBox(height: 20,),
              Button2(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Checkout()),);
              },),
            ],
          ),
        ],
      ),
    );
  }
}
