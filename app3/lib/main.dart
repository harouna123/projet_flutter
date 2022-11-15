import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'mon titre',
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Gestion_uahb',

        ),
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
          crossAxisAllignment: CrossAxisAllignment.stretch,
          children: [
            buildHeader(context),


          ],
        ),
      ),
     );
   }
 }



