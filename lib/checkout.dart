import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'Eapanioncheck/boxstore.dart';
import 'cart.dart';
import 'compoment/navigatin_bar_checkout.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);
  bool isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: _Appbar(),
      body: SmartRefresher(
        header: ClassicHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: ListView(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      boxstore(),
                      boxstore(),
                      boxstore(),
                      boxstore(),
                    ],
                  ),
                ],
              ),
      ),

      bottomNavigationBar: Navigation_checkout(),
    );
  }

  PreferredSize _Appbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyCart()),);
          },
        ),
        centerTitle: true,
        title: Text(
          "ตระกร้าสินค้า",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
  void _onRefresh() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    await Future.delayed(Duration(milliseconds: 1000));
    var items;
    items.add((items.length+1).toString());
    if(mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }
}
