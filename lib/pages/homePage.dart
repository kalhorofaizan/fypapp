import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fypapp/Tabs/companyListTab.dart';
import 'package:fypapp/Tabs/homeTab.dart';
import 'package:fypapp/Tabs/mapTab.dart';
import 'package:fypapp/Tabs/profileTab.dart';
import 'package:fypapp/widgets/ServiceItemCard.dart';

class HomePage extends StatefulWidget {
  static const String ROUTE = 'homePage';
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeTab(),
          MapTab(),
          CompanyListTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1
            )
          )
        ),
        child: TabBar(
          tabs: [
            Tab(
              icon: new Icon(Icons.home),
            ),
            Tab(
              icon: new Icon(Icons.map),
            ),
            Tab(
              icon: new Icon(Icons.list),
            ),
            Tab(
              icon: new Icon(Icons.account_circle),
            ),

          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
        ),
      )
    )) ;
  }
}
