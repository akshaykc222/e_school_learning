import 'dart:io';

import 'package:e_school_learning/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Provider/LoginProvider.dart';


Future<void> main() async {

  runApp(GjInfoTech());
}

class GjInfoTech extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<GjInfoTech> createState() => _GjInfoTechState();
}

class _GjInfoTechState extends State<GjInfoTech> {
  SharedPreferences? prefs;
  _checkSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('activated') != null) {
      activated=true;
    }
  }
  bool? activated;
  @override
  void initState() {
    Future.delayed(Duration.zero,() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.getBool('activated') != null) {
        activated=true;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>LoginProvider())
      ],
      child: MaterialApp(
        title: 'Ess Plus',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.black)
            )
          ),
         // primarySwatch: Colors.deepOrange,
        ),
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        routes: routes,
        initialRoute:activated==null? routeActivation:routeLoginWeb,
      ),
    );
  }
}
