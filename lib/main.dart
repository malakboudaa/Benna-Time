import 'package:flutter/material.dart';
import 'package:flutter_application_food/Screens/splash.dart';
import 'package:flutter_application_food/constantes.dart';
void main() {
  runApp(MyApp());
}

class  MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(    
        
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: GrisC,
      ),
      home: MyHomePage(        
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

