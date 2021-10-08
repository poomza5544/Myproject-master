import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'checkbox.dart';
import 'counter.dart';

class Cart_Product extends StatefulWidget{
  @override
  _Cart_Product createState() => _Cart_Product();
}

class _Cart_Product extends State<Cart_Product> {
  bool isChecked = false;
  List<Person> persons= [];

  @override
  void initState() {
    //adding item to list, you can add using json from network
    persons.add(Person(id:"1", name:"Ps5 PlayStation 5", phone:"9812122233", address:"Kathmandu"));
    persons.add(Person(id:"2", name:"Nintendo Switch", phone:"9812122244", address:"Pokhara"));
    persons.add(Person(id:"3", name:"RTX 3070Ti", phone:"98121224444", address:"Bangalore"));
    persons.add(Person(id:"4", name:"Ryzen R5 5700x", phone:"9812122255", address:"Karachi"));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: persons.map((personone){
                return Slidable( //enable slidable in list
                  key: Key(personone.id), //set key
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.15,
                  child: Container(
                    color: Color(0xFFFFF9F4),
                    padding: new EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        checkbox(),
                        Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50',width: 100,height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(personone.name,style: TextStyle(fontSize: 16),),
                            Text('ขนาด:'+personone.phone +'  '+ 'สี:'+personone.address,style: TextStyle(fontSize: 14),),
                            Row(
                              children: [
                                Text('ไฟล์แนบ:',style: TextStyle(fontSize: 12),),
                                Image.network('https://images.unsplash.com/photo-1547721064-da6cfb341d50',width: 20, height: 20,),
                                Text('หมายเหตุ: ....'),
                              ],
                            ),
                            Text('฿ 32,000',style: TextStyle(fontSize: 12),),
                            SizedBox(height: 5,),
                            Counter_1(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  secondaryActions: [ //action button to show on tail
                    SizedBox(
                      width: 20,
                      height: 150,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          primary: Colors.redAccent,
                        ),
                        child: Icon(Icons.delete),
                        onPressed: (){
                          persons.removeWhere((element){
                            return element.id == personone.id;
                          });
                          setState(() {
                          });
                        },
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
class Person{ //modal class for Person object
  String id, name, phone, address;
  Person({required this.id, required this.name, required this.phone, required this.address});
}