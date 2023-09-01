import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
         ExpandableMenuList("Notifications", Icons.notification_add_rounded, [
          ListTile(

          title: Text("Notification 1",style: TextStyle(color: Colors.white70),),
             onTap: () {
           // Handle onTap for Notification 1
             },
             ),

           ListTile(
             title: Text("Notification 1",style: TextStyle(color: Colors.white70)),
             onTap: () {
               // Handle onTap for Notification 1
             },
           ),
            ListTile(
            title: Text("Notification 2",style: TextStyle(color: Colors.white70)),
             onTap: () {
                // Handle onTap for Notification 2
                    },
               ),


    ]),
          MenuList("Academic Calender", Icons.calendar_month,(){}),
          MenuList("Sports", Icons.sports_soccer,(){}),
          MenuList("Student Council Notices", Icons.speaker_notes,(){
            AwesomeDialog(
              context: context,
              body: Container(
               child:Column(
                children: [
                  MyListtile(mytitle: "Workshops and Meets", onTap: (){}),
                  MyListtile(mytitle: "Achievements", onTap: (){}),
                  MyListtile(mytitle: "Inter nit tournaments", onTap: (){}),
                  MyListtile(mytitle: "Research papers", onTap: (){}),
                  MyListtile(mytitle: "Competitions and participants", onTap: (){}),
                ],
               ) ,
              ),
              dialogType: DialogType.noHeader,
              // Change the dialog type as needed
              animType: AnimType.SCALE,
              barrierColor: Colors.black38.withOpacity(0.9),
              title: "Student Council Notices",
              desc: "This is the content of the notice.",
              customHeader: Text('Notifications'),
              btnOkText: "Close",
              btnOkColor: Colors.lightBlueAccent,
              btnOkOnPress: () {},
            )..show();
          }),
          MenuList("Academic Section", Icons.school,(){
            AwesomeDialog(
              context: context,

              body: Container(

                child:Column(
                  children: [
                    MyListtile(mytitle: "ARCHITECTURE AND PLANNING", onTap: (){}),

                    MyListtile(mytitle: "COMPUTER SCIENCE AND ENGINEERING", onTap: (){}),
                    MyListtile(mytitle: "CIVIL", onTap: (){}),
                    MyListtile(mytitle: "ELECTRONICS AND COMMUNICATION", onTap: (){}),
                    MyListtile(mytitle: "MECHANICAL ENGINEERING", onTap: (){}),
                    MyListtile(mytitle: "CHEMICAL ENGINEERING", onTap: (){}),
                    MyListtile(mytitle: "ELECTRICAL AND ELECTRONICS", onTap: (){}),
                    MyListtile(mytitle: "MINING", onTap: (){}),
                  ],
                ) ,
              ),
                dialogType: DialogType.noHeader,
              // Change the dialog type as needed
              animType: AnimType.SCALE,
              barrierColor: Colors.black38.withOpacity(0.9),
              title: "Academic section",
              desc: "This is the content of the notice.",
              customHeader: Text('Academic Section'),
              btnOkText: "Close",
              btnOkColor: Colors.lightBlueAccent,
              btnOkOnPress: () {},
            )..show();
          }),
          MenuList("Recruitments", Icons.model_training,(){}),
          MenuList("Services", Icons.medical_services_outlined,(){}),
          MenuList("Settings", Icons.settings,(){}),

        ],
      ),
    );
  }
}
class MenuList extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuList(this.title, this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 60,
          child: Row(
            children: [
              Expanded(child: Icon(icon, size: 15, color: Colors.white)),
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ExpandableMenuList extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const ExpandableMenuList(this.title, this.icon, this.children);

  @override
  _ExpandableMenuListState createState() => _ExpandableMenuListState();
}

class _ExpandableMenuListState extends State<ExpandableMenuList> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Container(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    child: Icon(widget.icon, size: 15, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      widget.title,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_isExpanded)
          Column(
          children: widget.children.map((child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
      height: 25,
        // Set your desired height here
      child: child,
      ),
    );

    }).toList()
    )
    ]
    )
    );
  }
}
class MyListtile extends StatelessWidget {
  final String mytitle;
  final VoidCallback onTap;
   MyListtile({super.key, required this.mytitle ,required this.onTap });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListTile(
            tileColor:   Color.fromRGBO(28, 7, 81, 1),
            title: Text(mytitle,style: TextStyle(color: Colors.white70),),
          ),
        ),
      ),
    );
  }
}

