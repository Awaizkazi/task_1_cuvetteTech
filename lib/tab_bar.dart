import 'package:flutter/material.dart';
import 'package:task_1/tab_bar_pages/page_1.dart';
import 'package:task_1/tab_bar_pages/page_2.dart';
import 'package:task_1/tab_bar_pages/page_3.dart';

class TabBar_task1 extends StatefulWidget {
  const TabBar_task1({super.key});

  @override
  State<TabBar_task1> createState() => _TabBar_task1State();
}

class _TabBar_task1State extends State<TabBar_task1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          // title: ,
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.pink,
            tabs: [
              Tab(text: 'Research & News'),
              Tab(text: 'Reactions'),
              Tab(text: 'Related'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Reseach(),
            Reactions(),
            Related(),
          ],
        ),
      ),
    );
  }
}
