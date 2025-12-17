import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        // title: TabBar(tabs: [
        //    Text("Month"),
        //    Text("Year")
        // ]),
        actions: [
        Icon(Icons.notifications),
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CalendarDatePicker(initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now(), onDateChanged:(value) {
            
            },
            ),
            Row(
              children: [
              ElevatedButton(
                onPressed: (){}, child: Text("Edit Period",style: TextStyle(color: Colors.pinkAccent)),
              ),
              SizedBox(width: 40,),
              ElevatedButton(
                onPressed: (){}, child: Text("Add note",style: TextStyle(color: Colors.purpleAccent))),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dec26 ",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                Spacer(),
                Text("cycle day 21",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold)),
                Icon(Icons.question_mark_rounded),
               
              ],
            ),
             Text(" Low- change of getting pregent",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold))
          ],
        ),
      )
    );
  }
}