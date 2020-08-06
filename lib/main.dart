import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("MENU UTAMA"),
          backgroundColor: Colors.blue[600],
        ),
        backgroundColor: Colors.blue[200],
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: new Text(
                    "Arief Fadhilah",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  accountEmail: new Text("fadillah786@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(child: Image.asset("img/profile.jpg"))),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text("Change Password"),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
              )
            ],
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                MyMenu(
                    title: "Lawyers",
                    icon: Icons.account_balance,
                    warna: Colors.grey),
                MyMenu(
                    title: "Informasi", icon: Icons.info, warna: Colors.blue),
                MyMenu(
                    title: "Location",
                    icon: Icons.place,
                    warna: Colors.blueGrey),
                MyMenu(
                    title: "Contact",
                    icon: Icons.person_pin,
                    warna: Colors.blueGrey),
                MyMenu(
                    title: "KTA",
                    icon: Icons.card_membership,
                    warna: Colors.blueGrey),
                MyMenu(
                    title: "Multiguna Bank",
                    icon: Icons.archive,
                    warna: Colors.blueGrey),
                MyMenu(
                    title: "Multiguna Non Bank",
                    icon: Icons.card_membership,
                    warna: Colors.blueGrey),
                MyMenu(
                    title: "Masalah Kartu Kredit",
                    icon: Icons.assignment_late,
                    warna: Colors.blueGrey),
              ],
            )));
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10.0),
        child: InkWell(
            onTap: () {},
            splashColor: Colors.blue,
            child: Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 60.0,
                  color: warna,
                ),
                Text(title, style: new TextStyle(fontSize: 12.0))
              ],
            ))));
  }
}
