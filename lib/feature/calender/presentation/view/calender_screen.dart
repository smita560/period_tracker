import 'package:flutter/material.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> with TickerProviderStateMixin{
  late final TabController _tabcontroller;
  @override
 void initState(){
  super.initState();
  _tabcontroller= TabController(length: 2, vsync: this);
 }
@override
void dispose(){
  _tabcontroller.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2)
          ),
          child: TabBar
          (
            controller: _tabcontroller,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            tabs: 
          [
            
             Text("Month"),
             Text("Year")
          ]),
        ),
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