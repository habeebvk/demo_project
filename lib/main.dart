import 'package:flutter/material.dart';
import 'package:project_sample/login.dart';  

void main() {  
  runApp(MyApp());  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Railway Exams',  
      home: LoginPage()  
    );  
  }  
}  
