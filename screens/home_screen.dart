import 'package:flutter/material.dart';
import 'package:practicas/screens/config_screen.dart';
import 'package:practicas/screens/login_screen.dart';
import 'package:practicas/screens/info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenidos")),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text("Información"),
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const InfoScreen()));
            },
          ),
          ListTile(
            title: const Text("Ajustes"),
            leading: const Icon(Icons.engineering),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfigScreen()));
            },
          ),
          ListTile(
            title: const Text("Salir"),
            leading: const Icon(Icons.logout),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          )
        ],
      )),
      body: Center(
          child: ElevatedButton.icon(
        onPressed: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())),
        label: const Text('Salir'),
        icon: const Icon(Icons.logout),
      )),
    );
  }
}
