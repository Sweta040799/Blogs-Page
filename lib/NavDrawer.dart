import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>NavDrawerState();
}

class NavDrawerState extends State<NavDrawer>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 150.0, bottom: 50.0),
                      child: Icon(Icons.account_circle, size: 100.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0,top:20.0 ),
                    child: Text(
                      "WELCOME XYZ",
                      style: TextStyle(
                          fontSize: 18.0
                      ),),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.lightBlue),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("PROFILE"),
          ),
          ListTile(leading: Icon(Icons.event),
            title: Text("EVENTS"),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text("CONTACT US"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("ABOUT US"),
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text("LOGOUT"),
          )
        ],
      ),
    );
  }

}