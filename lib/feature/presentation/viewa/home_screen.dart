import 'package:flutter/material.dart';
import 'package:period_tracker/feature/calender/presentation/view/calender_screen.dart';
import 'package:period_tracker/feature/mine/presentation/view/mine_screen.dart';
import 'package:period_tracker/feature/selfcare/presentation/views/self_care.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
    late final TabController _tabController;


    @override
      void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

    @override
    void  dispose(){
      _tabController .dispose();
    super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar( selectedIndex: _tabController.index,onDestinationSelected: (value) {
     
       setState(() {
            _tabController.index = value;
          });
        
      }, destinations: 
      [
    
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
      body: TabBarView(
        controller: _tabController,
        children: [
          
        
      
      Padding(
           padding: const EdgeInsets.all
           (8.0),
           child: Column(children: [
            Center(child: Container(
               decoration:  BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8)
               ),
              child: const Center(child: Text(" Low change of getting pregnant", style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.bold   )
              ),
              ),
              ),
              ),
              const SizedBox(height: 20,),
              const Text("Next Ovulation",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              const Text(
                '6 Days Left',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
              ),
              const Text("Next perid: 20 days left",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal),)
        
           ],)
        
        ),
          const Center(child: CalenderScreen()),
           const Center(child: SelfcareScreen()),
            const Center(child: MineScreen()),
        
   ]   ),

      
    );
  }
}