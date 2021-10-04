import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class select_color extends StatefulWidget {
  @override
  select_colorState createState()
  {
    return select_colorState();
  }
}

class Tech
{
  String label;
  Tech(this.label);
}

class select_colorState extends State<select_color> {
  int selectedIndex = 0;
  List<Tech> chipsList = [
    Tech('http://via.placeholder.com/350x150'),
    Tech('http://via.placeholder.com/350x150'),
    Tech('http://via.placeholder.com/350x150'),
    Tech('http://via.placeholder.com/350x150'),
    Tech('http://via.placeholder.com/350x150'),
    Tech('http://via.placeholder.com/350x150'),
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
        padding: const EdgeInsets.all(8.0),
        child: ChoiceChip(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          label: Image.network(chipsList[i].label,width: 100,height: 100,),
          selectedColor: Colors.orangeAccent,
          backgroundColor: Colors.black12,
          selected: selectedIndex == i,
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