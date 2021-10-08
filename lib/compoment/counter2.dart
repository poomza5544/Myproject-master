import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Counter_2 extends StatefulWidget {
  const Counter_2({Key? key}) : super(key: key);

  @override
  _Counter_2State createState() => _Counter_2State();
}

class _Counter_2State extends State<Counter_2> {
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
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
            ),
              child: IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add_sharp,size: 16,color: Colors.black45,)
              ),
          ),
          SizedBox(width: 1,),
          Container(
            width: 50,
            height: 30,
            color: Colors.black12,
            alignment: Alignment.center,
            child: Text(
              '$_counter',
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(width: 1,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
            ),
              child: IconButton(
                  onPressed: _removeCounter,
                  icon: Icon(Icons.remove_sharp,size: 16,color: Colors.black45,),
              ),
          ),
        ],
      );
  }
}
