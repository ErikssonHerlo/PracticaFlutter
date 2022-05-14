import 'package:flutter/material.dart';

import 'config_screen.dart';
import 'info_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Bienvenidos a la Fase 2 del Examen")),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text("Información"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfoScreen()));
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
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            )
          ],
        )),
        body: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            2: FixedColumnWidth(120),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Container(
                    height: 120,
                    width: 600,
                    child: Image.asset('assets/mern.png')),
                Container(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/mysql.png')),
              ],
            ),
            TableRow(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                Container(
                    height: 120,
                    width: 120,
                    child: Image.asset('assets/js.png')),

                Center(
                  child: Container(
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/javalogo.jpg')),
                ),
              ],
            ),
            TableRow(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              children: <Widget>[
                Container(
                    height: 120,
                    width: 600,
                    child: Image.asset('assets/uiux.png')),

                Center(
                  child: Container(
                      height: 120,
                      width: 600,
                      child: Image.asset('assets/ubuntu.png')),
                ),
              ],
            ),
          ],
        ));
  }
}
