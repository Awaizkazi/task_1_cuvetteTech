import 'package:flutter/material.dart';
import 'package:task_1/tab_bar_pages/page_2.dart';
import 'package:task_1/tab_bar_pages/page_3.dart';
import 'tab_bar.dart';
import 'tab_bar_pages/page_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage("assets/home_screen_1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Will China invade Taiwan\nbefore end september? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Icon(
                        Icons.redo,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 420,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 76, 3, 201),
                      Colors.pink,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CHANCE',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Image.asset('assets/dollar_09.png'),
                        ),
                        Image.asset('assets/dollar_89.png'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '    11%',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset('assets/up_arrow.png'),
                        Text(
                          "      25H\n+25495",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Yes',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xff21FFAA),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'No',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xffE432C1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                labelColor: Colors.pink,
                tabs: [
                  Tab(text: 'Research & News'),
                  Tab(text: 'Reactions'),
                  Tab(text: 'Related'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Reseach(),
                    Reactions(),
                    Related(),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Row(
            children: [
              buildNavBarItem(Icons.feed, 0),
              buildNavBarItem(Icons.analytics, 1),
              buildNavBarItem(Icons.pie_chart, 2),
              buildNavBarItem(Icons.person, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem(
    IconData assignIcon,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex == index;
        });
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          color: index == _selectedItemIndex ? Colors.pink : Colors.white,
        ),
        child: Icon(
          assignIcon,
          color: index == _selectedItemIndex ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
