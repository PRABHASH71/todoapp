import 'package:flutter/material.dart';
import 'package:todo/Main2.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/screens/home.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: tdBlue,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("ToDo_App"),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.check_box,
            color: Colors.white,
            size: 30,
          ),
        ]),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          children: <Widget>[
            Ink(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: InkWell(
                splashColor: Colors.red,
                child: Center(
                    child: Text(
                  "Tasks",
                  style: TextStyle(fontSize: 30),
                )),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => main2()));
                },
              ),
            ),
            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              padding: const EdgeInsets.all(8),
              child: InkWell(
                splashColor: Colors.red,
                child: Center(
                    child: Text(
                  "Notes",
                  style: TextStyle(fontSize: 30),
                )),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              padding: const EdgeInsets.all(8),
              child: InkWell(
                splashColor: Colors.red,
                child: Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(fontSize: 30),
                )),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              padding: const EdgeInsets.all(8),
              child: InkWell(
                splashColor: Colors.red,
                child: Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(fontSize: 30),
                )),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              ),
              padding: const EdgeInsets.all(8),
              child: InkWell(
                splashColor: Colors.red,
                child: Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(fontSize: 30),
                )),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
          ],
        )),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SizedBox(
          height: 300,
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/bg1.jpg'),
                        radius: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("lukmanmohammad008@gmail.com")
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)]),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text("Profile"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)]),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  title: Text("Feedback"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)]),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: Text("Help Desk"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)]),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance_outlined,
                    color: Colors.white,
                  ),
                  title: Text("About"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Color.fromARGB(255, 3, 54, 96)])),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                  ),
                  title: Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
