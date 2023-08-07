import 'package:flutter/material.dart';

import 'naviContainer.dart';
import 'navigationBar.dart';

class PointHistoryState extends StatefulWidget {
  const PointHistoryState({super.key});

  @override
  State<PointHistoryState> createState() => _PointHistoryStateState();
}

class _PointHistoryStateState extends State<PointHistoryState>
    with SingleTickerProviderStateMixin {
  String userPoint = "0";

  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ""),
      endDrawer: NaviContainer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 100,
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Points owned",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    userPoint,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Point History",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.red,
              tabs: [
                Tab(
                  text: 'Points received',
                ),
                Tab(
                  text: 'Points used',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(child: Center(child: Text('Points transaction'))),
                  Text('Person')
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
