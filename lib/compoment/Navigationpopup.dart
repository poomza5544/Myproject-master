import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/compoment/selectcolor.dart';
import 'package:untitled/compoment/selectsize.dart';
import '../checkout.dart';
import 'Button.dart';

class Navigationpopup extends StatefulWidget {
  const Navigationpopup({Key? key}) : super(key: key);

  @override
  _NavigationpopupState createState() => _NavigationpopupState();
}

class _NavigationpopupState extends State<Navigationpopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Button(
                onPressed: () => _tripEditModalBottomSheet(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
            ),
            ),
              height: MediaQuery.of(context).size.height * .95,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'asste/fg.png',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '¥ 35',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 20,
                                  ),
                                ),
                                Text('Macbook Pro M1'),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.black12,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                    Flexible(
                      child: ListView(
                        children: [
                          SizedBox(height: 10,),
                          Column(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('ขนาด:',style: TextStyle(fontSize: 15),),
                                  select_size(),
                                  SizedBox(height: 5,),
                                  Text('สี:',style: TextStyle(fontSize: 15),),
                                  SizedBox(height: 5,),
                                  select_color(),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'จำนวนการสั่งซื้อ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Button(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout()),
                            );
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
