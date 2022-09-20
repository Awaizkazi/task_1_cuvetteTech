import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Reactions extends StatefulWidget {
  const Reactions({super.key});

  @override
  State<Reactions> createState() => _ReactionsState();
}

class _ReactionsState extends State<Reactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        'assets/215_2.png',
                      ),
                    ),
                    Text(
                      '215',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: Image.asset(
                        'assets/Comment_2.png',
                      ),
                    ),
                    Text(
                      '95K',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/girl_image.png'),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "If China does indeed attack Taiwan soon,\nOctober is the likely time since the... more ",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset('assets/man.png'),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        "I will be surprised if #China will in fact\nattack Taiwan. Doing so requires lots of... more",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter a message",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outline),
                      ),
                    ),
                  ),
                ),
              ],
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
                  '  Reactions',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 70,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'Top',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 110,
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[600],
                  ),
                  child: Center(
                    child: Text(
                      'Newest',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Remember to keep comments respectful and to follow our Community Guidelines'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/man2.png'),
                ),
                Row(
                  children: [
                    Text(
                      'Add Comment...',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      width: 210,
                      child: Icon(
                        Icons.close,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/girl_2.png'),
                      Text(
                        '    Prof.alison . 1h ago',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "If China does indeed attack Taiwan soon, October is\nthe likely time since the Taiwan Strait waters will be\ncalm, facilitating amphibious operations.\nThe drills around Taiwan allowed China to build up\nforces in Fujian, which is part of what's needed\nbefore an invasion.",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 29),
                      Image.asset('assets/like.png'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '      5 REPLIES',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ],
                  ),
                  //  ROW 2
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/man.png'),
                      Text(
                        '    TomBN . 3h ago',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "I will be surprised if #China will in fact attack Taiwan.\nDoing so requires lots of courage, which China lacks.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 29),
                      Image.asset('assets/like.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
