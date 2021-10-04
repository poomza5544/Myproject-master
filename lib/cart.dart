import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'Eapanion/Eapanion.dart';
import 'compoment/navigation_bar.dart';
import 'compoment/search.dart';

void main() {
  runApp(MyCart());
}

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);
  bool switchState = false;
  bool switchState1 = false;
  get items => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: _buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 10.0,
        ),
        child: SmartRefresher(
          header: ClassicHeader(),
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          controller: _refreshController,
          child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('จำนวนสินค้าทั้งหมด',style: TextStyle(
                              fontSize: 15,
                            ),),
                            Text('(20)',style: TextStyle(
                              fontSize: 15,
                            ),)
                          ],
                        ),
                        SizedBox(height: 15),
                        Eapanion(),
                      ],
                    ),
                  ],
                ),
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  PreferredSize _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text("ตระกร้าสินค้า",style: TextStyle(
          fontSize: 25,
        ),),
        backgroundColor: Colors.orange,
      ),
    );
  }
  void _onRefresh() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length+1).toString());
    if(mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }

}
