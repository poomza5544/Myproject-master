import 'package:flutter/material.dart';
import 'package:getwidget/components/checkbox/gf_checkbox.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GFCheckbox(
          size: 22,
          activeBgColor: Colors.deepOrange,
          inactiveBorderColor: Colors.black12,
          type: GFCheckboxType.circle,
          onChanged: (value) {
            setState(() {
              isChecked1 = value;
            });
          },
          value: isChecked1,
          inactiveIcon: null,

        ),
      ],
    );
  }
}
