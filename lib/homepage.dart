import 'package:flutter/material.dart';
import 'package:nft_app/components/appBar.dart';
import 'package:nft_app/components/bottomBar.dart';
import 'package:nft_app/components/glassBox.dart';
import 'package:nft_app/components/tabBar.dart';
import 'package:nft_app/tabs/recent_tab.dart';
import 'package:nft_app/tabs/top.dart';
import 'package:nft_app/tabs/trending.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void onSearch() {}

  List tabOptions = [
    ["RECENTS", RecentTab()],
    ["TRENDING", TrendingTab()],
    ["TOP", TopTab()]
  ];

  //bottom NavBar  handle BOttomNav Bar Index

  int _currentIndex = 0;

  void _handleIndexChange(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          extendBody: true,
          bottomNavigationBar: GlassBOx(
            child:
                BottomNavBar(index: _currentIndex, onTap: _handleIndexChange),
          ),
          //backgroundColor: Colors.grey[300],
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    MyAppBar(
                        title: "EXPLORE\nCOLLECTION", onSearcTip: onSearch),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 600,
                      child: MyTabBarMenu(
                        tabOptions: tabOptions,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
          //body: ,
          ),
    );
  }
}