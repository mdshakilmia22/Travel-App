import 'package:flutter/material.dart';
import 'package:gotravel_project/destination_details.dart';
import 'package:gotravel_project/home_page.dart';
import 'package:gotravel_project/loading_page.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}
