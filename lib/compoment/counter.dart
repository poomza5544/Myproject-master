import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Counter_1 extends StatefulWidget {
  const Counter_1({Key? key}) : super(key: key);

  @override
  _Counter_1State createState() => _Counter_1State();
}

class _Counter_1State extends State<Counter_1> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _removeCounter(){
    setState(() {
      if(_counter<1){
        _counter=0;
      }
      else{
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 35,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
            ),
              child: IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add,size: 16,color: Colors.red,)
              ),
          ),
          Text(
            '$_counter',
            style: TextStyle(fontSize: 14),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
            ),
              child: IconButton(
                  onPressed: _removeCounter,
                  icon: Icon(Icons.remove,size: 16,color: Colors.red,),
              ),
          ),
        ],
      ),
    );
  }
}
