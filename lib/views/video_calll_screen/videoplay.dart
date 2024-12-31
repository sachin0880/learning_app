import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';



class CallScreenss extends StatefulWidget {
  @override
  _CallScreenssState createState() => _CallScreenssState();
}

class _CallScreenssState extends State<CallScreenss> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: newprimaryColor,
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(42),
                          bottomLeft: Radius.circular(42),), color: darkgray
                    ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: MotionTabBar(
        initialSelectedTab: "Home",
        labels: ["Home", "Search", "Profile"],
        icons: [Icons.home, Icons.search, Icons.person],
        //textStyle: TextStyle(color: white),
        tabSize: 60,
        tabBarHeight: 70,
        tabIconColor: white,
        tabIconSize: 28.0,
        tabIconSelectedSize: 32.0,
        tabSelectedColor: Colors.blueAccent,
        tabIconSelectedColor: Colors.white,
        tabBarColor: newprimaryColor,
        onTabItemSelected: (int index) {
          setState(() {
            _tabController.index = index;
          });
        },
      ),
    );
  }
}
