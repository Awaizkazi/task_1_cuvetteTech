import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Related extends StatefulWidget {
  const Related({super.key});

  @override
  State<Related> createState() => _RelatedState();
}

class _RelatedState extends State<Related> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              context: context,
              builder: (context) => buildSheet(),
            );
          },
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/lady.png'),
                    Text(
                      'Liz Truss will be UK’s next\nPrime Minister?',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset('assets/brazil.png'),
                    ),
                    Text(
                      'British Pound will fall after\nPrime Minister elections?',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class buildSheet extends StatefulWidget {
  const buildSheet({super.key});

  @override
  State<buildSheet> createState() => _buildSheetState();
}

class _buildSheetState extends State<buildSheet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                width: 150,
                lineHeight: 8,
                percent: 0.2,
                progressColor: Color.fromARGB(255, 204, 203, 203),
                backgroundColor: Color.fromARGB(255, 204, 203, 203),
                barRadius: Radius.circular(10),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '  Related',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            card1('Liz Truss will be UK’s next\nPrime Minister?',
                'assets/lady.png'),
            card1('British Pound will fall after\nPrime Minister elections?',
                'assets/brazil.png'),
            card1('British Railway Strikes will\nend by before Sept. 2022?',
                'assets/rail_2.png'),
            card1('Liz Truss will be UK’s next\nPrime Minister?',
                'assets/lady.png'),
            card1('British Pound will fall after\nPrime Minister elections?',
                'assets/brazil.png'),
            card1('British Railway Strikes will\nend by before Sept. 2022?',
                'assets/rail_2.png'),
          ],
        ),
      ],
    );
  }

  Widget card1(String title, String img) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  img.toString(),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 23),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
