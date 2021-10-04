import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/compoment/price2.dart';
import 'package:untitled/compoment/search_S.dart';
import 'compoment/Navigationpopup.dart';
import 'compoment/Product_details.dart';
import 'compoment/price.dart';
import 'compoment/selectsize.dart';
import 'compoment/swiper.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class showproduct extends StatefulWidget {
  const showproduct({Key? key}) : super(key: key);

  @override
  _showproductState createState() => _showproductState();
}

class _showproductState extends State<showproduct> {
  RefreshController _refreshController = RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
          size: 20,
        ),
        title:searchS(),
        actions: [
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.shareSquare,
                color: Colors.black54,
                size: 20,
              ),
              onPressed: () {}),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.shoppingBasket,
                color: Colors.black54,
                size: 20,
              ),
              onPressed: () {}),
        ],
      ),
      body: SmartRefresher(
        header: ClassicHeader(),
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        controller: _refreshController,
        child: ListView(
          children: [
            swiper_image(),
            pricename2(),
            Product_details(),
          ],
        ),
      ),
      bottomNavigationBar: Navigationpopup(),
    );
  }

  void _onRefresh() async{
    await Future.delayed(Duration(milliseconds: 1000));
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
