import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(onDestinationSelected: (value) {
        
      }, destinations: 
      const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Today',
          ),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: "Calender"),
          NavigationDestination(icon: Icon(Icons.star_half), label: "Self Care"),
          NavigationDestination(icon: Icon(Icons.moving_outlined), label: "Mine")
      ], ),
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        leading:  GestureDetector(child: Icon(Icons.settings)),
       title: Text("Dec 14"),
actions: [
Padding(
  padding: const EdgeInsets.all(8.0),
  child: GestureDetector(child: Icon( Icons.notifications)),
),


],

      ),
      body: Padding(
         padding: const EdgeInsets.all
         (8.0),
         child: Column(children: [
          Center(child: Container(
             decoration:  BoxDecoration(
              color: Colors.blueGrey,
              border: Border.all(color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(8)
             ),
            child: Center(child: Text(" Low change of getting pregnant", style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold   )
            ),
            ),
            ),
            ),
            SizedBox(height: 20,),
            Text("Next Ovulation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            Text(
              '6 Days Left',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
            ),
            Text("Next perid: 20 days left",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal),)

         ],)

      ),

      
    );
  }
}