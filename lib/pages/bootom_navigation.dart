import 'package:flutter/material.dart';
import 'package:movie_app/pages/navpages/bookmark_page.dart';
import 'package:movie_app/pages/navpages/home_page.dart';
import 'package:movie_app/pages/navpages/play_page.dart';
import 'package:movie_app/pages/navpages/settings_page.dart';

class BottomNavigationClassLearn extends StatefulWidget {
  const BottomNavigationClassLearn({super.key});

  @override
  State<BottomNavigationClassLearn> createState() =>
      _BottomNavigationClassLearnState();
}

class _BottomNavigationClassLearnState extends State<BottomNavigationClassLearn>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabbarView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabbarView.values.length,
        child: Scaffold(
          extendBody: true,
          body: _MyTabView(),
          floatingActionButton: FloatingActionButton(onPressed: () {
            showModalBottomSheet(context: context,
            
            backgroundColor: Colors.white,
            //isScrollControlled: true,
            
            //enableDrag: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(400))
            ),

             builder: (context) => Center(
              child: Column(children: [
                
                ElevatedButton.icon(onPressed: () {
                  Navigator.pop(context);
                },icon: Icon(Icons.abc),label: Text('data'), )
              ],),
             ));
          },
          
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 5,
            child: _myTabBar(),
          ),
        ));
  }

  TabBar _myTabBar() {
    return TabBar(
        controller: _tabController,
        labelColor: Colors.pink,
        unselectedLabelColor: Colors.black.withOpacity(0.5),
        onTap: (int index) {},
        physics: NeverScrollableScrollPhysics(),
        tabs: _MyTabbarView.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }

  TabBarView _MyTabView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          BookmarkPage(),
          BookmarkPage(),
          PlayPage(),
          SettingsPage(),
        ]);
  }
}

enum _MyTabbarView { Home, Shop, Fovorite, Profil }

extension _MyTabbarViewExtension on _MyTabbarView {}
