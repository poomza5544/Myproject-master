import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final Function(int) onCountCountChange;
  Count({required this.count,required this.onCountCountChange});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(onPressed: () => onCountCountChange(1),
            icon: Icon(Icons.add)),
        FlatButton( child: Text("$count"),
        onPressed: (){},
        ),
        IconButton(onPressed: () => onCountCountChange(-1),
            icon: Icon(Icons.remove)),
        SizedBox(width: 4,),
        Icon(
          Icons.delete_sharp,
          color: Colors.red,
          size: 20,
        ),
      ],
    );
  }
}
