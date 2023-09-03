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

          ExpandableMenuList('Student Council Notices', Icons.speaker_notes, [
            ListTile(

              title: Text("Workshops and Conferences"

                 ,style: TextStyle(color: Colors.white70),),
              onTap: () {
                // Handle onTap for Notification 1
              },
            ),

            ListTile(
              title: Text("Achievements",style: TextStyle(color: Colors.white70)),
              onTap: () {
                // Handle onTap for Notification 1
              },
            ),
            ListTile(
              title: Text("Inter Nit Tournaments",style: TextStyle(color: Colors.white70)),
              onTap: () {
                // Handle onTap for Notification 2
              },
            ),ListTile(
              title: Text('Research Papers',style: TextStyle(color: Colors.white70)),
              onTap: () {
                // Handle onTap for Notification 2
              },
            ),ListTile(
              title: Text("Competition and Participants",style: TextStyle(color: Colors.white70)),
              onTap: () {
                // Handle onTap for Notification 2
              },
            ),


          ]),


      ExpandableMenuList("Acedemic Section", Icons.notification_add_rounded, [
        ListTile(

          title: Text("ARCHITECTURE AND PLANNING",style: TextStyle(color: Colors.white70),),
          onTap: () {
            // Handle onTap for Notification 1
          },
        ),

        ListTile(
          title: Text("COMPUTER SCIENCE AND ENGINEERING",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 1
          },
        ),
        ListTile(
          title: Text("CIVIL",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        ),
        ListTile(
          title: Text("MECHANICAL",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        ), ListTile(
          title: Text("ELECTRICAL",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        ), ListTile(
          title: Text("MINING",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        ), ListTile(
          title: Text("ELECTRICAL AND ELECTRONICS",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        ), ListTile(
          title: Text("CHEMICAL",style: TextStyle(color: Colors.white70)),
          onTap: () {
            // Handle onTap for Notification 2
          },
        )],
      ),

        MenuList("Recruitments", Icons.model_training,(){}),
          MenuList("Services", Icons.medical_services_outlined,(){}),
          MenuList("Settings", Icons.settings,(){}),



      ]
      )
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
              Expanded(child: Icon(icon, size: 20, color: Colors.white)),
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),
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
                    child: Icon(widget.icon, size: 20, color: Colors.white),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      widget.title,
                      style: TextStyle(color: Colors.white, fontSize: 20),
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
        padding: const EdgeInsets.only(bottom: 8),
        child: ListTile(
          minVerticalPadding: 5,
          tileColor:   Color.fromRGBO(9, 15, 21, 1),
          title: Text(mytitle,style: TextStyle(color: Colors.white70),),
        ),
      ),
    );
  }
}

