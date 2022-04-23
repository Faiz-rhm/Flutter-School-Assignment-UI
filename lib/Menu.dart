import 'package:assignment_app/main.dart';
import 'package:flutter/material.dart';


class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 15),
          children: <Widget>[
            SizedBox(
              height: 300,
              child: DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 140,),
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.only(
                        bottom: 10, ),
                      child: const DecoratedBox(
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/icons/1.png'),
                          )),
                      ),
                    ),
                    const Text(
                      "Dave Albert",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 8,),
                    InkWell(
                      onTap: () {
                      },
                      child: const Text(
                        "View Profile",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              },
            ),
            ListTile(
              title: const Text("Edit Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text("Settings", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              onTap: () {
              },
            ),
           const ListTile(
              title: Text("Support", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
            ),
            ListTile(
              title: const Text("Assignment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text("Grades", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              onTap: () {
              },
            ),
            const SizedBox(
              height:
              20.0,
            ),
            const SizedBox(
              height:
              100.0,
            ),
            ListTile(
              title: const Text("Logout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
              onTap: () {
              },
            ),
            const SizedBox(
              height:
              20.0,
            ),
          ],
        ),
      ),
    );
  }
}
