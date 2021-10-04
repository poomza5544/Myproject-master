import 'package:flutter/material.dart';

class boxstore extends StatefulWidget {
  const boxstore({Key? key}) : super(key: key);

  @override
  _boxstoreState createState() => _boxstoreState();
}

class _boxstoreState extends State<boxstore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          width: 400,
          height: 25,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text('1. shopee'),
            ],
          ),
        ),
        Divider(
          height: 2,
          thickness: 1,
          indent: 2,
          endIndent: 2,
          color: Colors.black12,
        ),
        Container(
          height: 140,
          width: 400,
          color: Color(0xFFFFF9F4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
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
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text('สี: ขาว'),
                      SizedBox(
                        width: 40,
                      ),
                      Text('ขนาด:'),
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
                      Text('ไฟล์แนบ:'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'asste/bag.jpg',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('หมายเหตุ:...'),
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
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'X 1',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Icon(
                        Icons.delete_sharp,
                        color: Colors.red,
                        size: 20,
                      ),
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
