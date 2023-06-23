import 'package:flutter/material.dart';

class YaoTabbar extends StatefulWidget {
  const YaoTabbar({super.key});

  @override
  State<YaoTabbar> createState() => _YaoTabbarState();
}

class _YaoTabbarState extends State<YaoTabbar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48.0, // Height of the TabBar
          child: Stack(
            children: [
              Positioned.fill(
                bottom: 0.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 2.0, // Height of the line
                    color: Colors.grey,
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: 'Articles',
                  ),
                  Tab(
                    text: 'About',
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: Colors.red,
                child: const Center(child: Text('Article')),
              ),
              Container(
                color: Colors.green,
                child: const Center(child: Text('About')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
