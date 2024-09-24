import 'package:flutter/material.dart';

import 'my_drawer_header.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSection.dashboard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[700],
        title: Text('ATTENDANCE', style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
       children: [

         Container(
           decoration: BoxDecoration(
             color: Colors.blue,
           ),

           ),
         Text("    All Members", style: TextStyle(color: Colors.black, fontSize: 20),),
         Divider(),

         Center(
           child: Container(
           margin: EdgeInsets.only(bottom: 10, top: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/9731022f0be7c965e880505461643850.jpg',),)
           ),

                  ),
         ),
         Center(
           child: Column(
             children: [
               Text("Wade Warren", style: TextStyle(color: Colors.black, fontSize: 20),),
               Divider(),
             ],
           ),
         ),
         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/a138f1a9cb38ccdb6c28d977b17dd0f5.jpg'),
               )
           ),
         ),
         Center(child: Text("Esther Howards", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),

         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/profile.jpg'),
               )
           ),
         ),
         Center(child: Text("Cameron Williamson", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),

         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/f3a422fcb4f2731f1f63d93d814b9fac.jpg'),
               )
           ),
         ),
         Center(child: Text("Savvanah Nguyen", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),

         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/c88fad210427654793436ba7aabadddb.jpg'),
               )
           ),
         ),
         Center(child: Text("Leslie Alexander", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),

         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/9724a7978e4e9fb3d8b90a476e5024c0 (1).jpg'),
               )
           ),
         ),
         Center(child: Text("Kathryn Murphy", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),

         Container(
           margin: EdgeInsets.only(bottom: 10),
           height: 70,
           decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(image: AssetImage('assets/images/67eb28e989c6b1d208152e0a3b025a99.jpg'),
               )
           ),
         ),
         Center(child: Text("Brooklyn Simmonss", style: TextStyle(color: Colors.black, fontSize: 20),)),
         Divider(),
       ],
      ),
      drawer: Drawer(
        child:SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15,),
      child: Column(
children: [
        menuItem(1, "Timer", Icons.dashboard_outlined,
           currentPage == DrawerSection.dashboard ? true : false),
  menuItem(2, "Attendance", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(3, "Activity", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(4, "Timesheet", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(5, "Report", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(6, "Jobsite", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(7, "Team", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(8, "Time Off", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(9, "Schedules", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  Divider(),
  menuItem(10, "Request to join Organisation", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(11, "Change Password", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(12, "Logout", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  Divider(),
  menuItem(13, "FAQ & Help", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(14, "Privacy Policy", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
  menuItem(15, "Version:2.10(1)", Icons.dashboard_outlined,
      currentPage == DrawerSection.dashboard ? true : false),
],
      ),
    );
  }
  Widget menuItem(int id, String title, IconData icon, bool selected){
    return Material(
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                  child: Icon(
               icon,
                size: 20,
                    color: Colors.black,
              ),
              ),
              Expanded(
                flex:3,
                child: Text(
                  title, style: TextStyle(
                  color: Colors.black, fontSize: 16,),),),
            ],
          ),
        ),
      )
    );
  }
}

enum DrawerSection {
  dashboard,
  Attendance,
  Activity,
  Timesheet,
  Report,
}
