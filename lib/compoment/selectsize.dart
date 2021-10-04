import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class select_size extends StatefulWidget {
  @override
  select_sizeState createState()
  {
    return select_sizeState();
  }
}

class Tech
{
  String label;
  Tech(this.label);
}

class select_sizeState extends State<select_size> {
  int selectedIndex = 0;
  List<Tech> chipsList = [
    Tech("16x30"),
    Tech("20x20"),
    Tech("40x20"),
    Tech("150x40"),
    Tech("250x120")
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5,),
        Wrap(
          spacing: 7,
          direction: Axis.horizontal,
          children: techChips(),
        )
      ],
    );
  }

  List<Widget> techChips () {
    List<Widget> chips = [];
    for (int i=0; i< chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left:10, right: 5),
        child: ChoiceChip(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          visualDensity: VisualDensity(horizontal: 0,vertical: -2),
          label: Text(chipsList[i].label),
          labelStyle: TextStyle(color: Colors.black),
          selectedColor: Colors.orangeAccent,
          backgroundColor: Colors.white70,
          selected: selectedIndex == i,
          side: BorderSide(color: Colors.orangeAccent,width: 1.0,),
          onSelected: (bool value)
          {
            setState(() {
              selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}