import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Reseach extends StatefulWidget {
  const Reseach({super.key});

  @override
  State<Reseach> createState() => _ReseachState();
}

class _ReseachState extends State<Reseach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                ' 215 Expert Opinion',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 241, 189, 239),
                    ),
                    child: Center(
                      child: Text(
                        '12%',
                        style: TextStyle(
                          color: Color.fromARGB(255, 170, 7, 138),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      LinearPercentIndicator(
                        width: 160,
                        lineHeight: 10,
                        percent: 0.2,
                        progressColor: Colors.purple,
                        backgroundColor: Color.fromARGB(255, 204, 203, 203),
                        barRadius: Radius.circular(10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LinearPercentIndicator(
                        width: 160,
                        lineHeight: 10,
                        percent: 0.8,
                        progressColor: Colors.grey[700],
                        backgroundColor: Color.fromARGB(255, 204, 203, 203),
                        barRadius: Radius.circular(10),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LinearPercentIndicator(
                        width: 160,
                        lineHeight: 10,
                        percent: 0.1,
                        progressColor: Colors.grey[700],
                        backgroundColor: Color.fromARGB(255, 204, 203, 203),
                        barRadius: Radius.circular(10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '12% Buy Yes',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffE432C1),
                        ),
                      ),
                      Text(
                        '88% Buy No',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff687684),
                        ),
                      ),
                      Text(
                        '1% No Resolve',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff687684),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shadowColor: Colors.grey,
                    child: Container(
                      width: 250,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Thehill',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1 Spet',
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Last week, the dire warnings that\nappeared in the Wall Street Journal, The\nEconomist and Foreign Affairs about\nChina's imminent war with or...",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.shortcut),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.grey,
                    child: Container(
                      width: 250,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' BBC',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '1 Spet',
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Most people the BBC spoke to\ndo not believe China is about to attack Taiwan.They're a bunch of gangsters, said one man fishing on the...",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.shortcut),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
