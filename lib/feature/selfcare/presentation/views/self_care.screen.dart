import 'package:flutter/material.dart';

class SelfcareScreen extends StatefulWidget {
  const SelfcareScreen({super.key});

  @override
  State<SelfcareScreen> createState() => _SelfcareScreenState();
}

class _SelfcareScreenState extends State<SelfcareScreen> {
 int selectedIndex= 0;

  List<String> item = [
    "Discover",
    "Period",
    "Symptoms",
    "Self_check",
    "Better Sleep",
  ];
   final List<Widget> tabBodies = [
    // Discover
    ListView(
      children: const [
        ListTile(title: Text("Discover Item 1")),
        ListTile(title: Text("Discover Item 2")),
        ListTile(title: Text("Discover Item 3")),
        
      ],
    ),

    // Period
    ListView(
      children: const [
        ListTile(title: Text("Period Tracker")),
        ListTile(title: Text("Cycle History")),
      ],
    ),
    ListView(
      children: const [
        ListTile(title: Text("Period Tracker")),
        ListTile(title: Text("Cycle History")),
      ],
    ),
    ListView(
      children: const [
        ListTile(title: Text("Period Tracker")),
        ListTile(title: Text("Cycle History")),
      ],
    ),
    ListView(
      children: const [
        ListTile(title: Text("Period Tracker")),
        ListTile(title: Text("Cycle History")),
      ],
    ),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Self care"), leading: Icon(Icons.settings)),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: item.length,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemBuilder: (BuildContext context, index) {
          final bool isSelected = selectedIndex == index;
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                    });
                  
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected?Colors.blueAccent:Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black),
                    ),
                  
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item[index], ),
                    ),
                  ),
                );
               
                }
              ),
              
            ),
        const SizedBox(height: 16),
            Expanded(
              child: tabBodies[selectedIndex],
          )
          ],
          
        ),
      ),
    );
  }
}
