import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'titre',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'uahb'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        ),
      drawer: NavigationDrawer(),
      );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context)
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: Colors.purple,
          padding: EdgeInsets.all(24),
          child: Wrap(
            runSpacing: 16,
          ),
        ),
      ),

    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container();
  }
}


