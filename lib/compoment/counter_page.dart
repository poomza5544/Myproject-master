import 'package:flutter/cupertino.dart';

import 'count.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Count(
        count: count,
        onCountCountChange: (int val) => setState(()=>count += val),
      ),
    );
  }
}
