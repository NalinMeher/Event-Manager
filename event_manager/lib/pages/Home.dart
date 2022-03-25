import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Manager"),
      ),
      body: const Center(
        child: Text("Home"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Nalin Meher"),
                accountEmail: Text("nalin.2nextgen@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://yt3.ggpht.com/ytc/AKedOLSotxxtxDSF8sEWdRtDqDpHti27tuntj-96VWOKUg=s900-c-k-c0x00ffffff-no-rj"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("nalin.2nextgen@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
    );
  }
}
