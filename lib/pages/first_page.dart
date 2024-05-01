import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_flutter/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1st Page"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange,
        child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.view_sidebar_outlined, size: 100)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("H O M E"),
                onTap: () {
                  Navigator.pushNamed(context, "/homePage");
                },
              ),
               ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                  onTap: () {
                    Navigator.pushNamed(context, "/settingsPage");
                  }
              ),
              const ListTile(
                leading: Icon(Icons.contact_emergency),
                title: Text("Contact"),
              ),
              const ListTile(
                leading: Icon(Icons.more),
                title: Text("More"),
              )
            ]),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Second Pages"),
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
