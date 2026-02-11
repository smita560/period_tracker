import 'package:flutter/material.dart';

class MineScreen extends StatefulWidget {
  const MineScreen({super.key});

  @override
  State<MineScreen> createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mine"),
        leading: GestureDetector(child: Icon(Icons.settings)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Email: user@example.com",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border_sharp,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "My goal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.batch_prediction, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              "Prediction",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.pregnant_woman, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              "Pregnancy",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.toggle_on_sharp,
                              color: Colors.white,
                              size: 48,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Report",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),Icon(Icons.ios_share_sharp, color: Colors.blueGrey,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
