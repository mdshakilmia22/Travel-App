import 'package:flutter/material.dart';
import 'package:gotravel_project/modal/color_class.dart';
import 'package:gotravel_project/class/routing_page.dart';
import 'package:gotravel_project/home_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Future <void> getPage()async{
    await Future.delayed(const Duration(seconds: 2)).then((value) =>
    Navigator.push(context, MaterialPageRoute(builder: (_)=>RoutingPage())));
  }
  @override
  void initState() {
    getPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
             height: MediaQuery.of(context).size.height/8.5,
             width: MediaQuery.of(context).size.width/1.20,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(50),
               color: Colors.lime[200],
             ),
             child: Row(
               children: [
                 Image.asset('images/t.png',height: 100,width: 100,),
                 SizedBox(
                   width: 20,
                 ),
                 Text('Go',style: TextStyle(color: Colors.red,fontSize: 27,fontWeight: FontWeight.bold,fontFamily: 'RobotoSlab'),),
                 Text('Travel',style: TextStyle(color: Colors.indigo,fontSize: 27,fontWeight: FontWeight.bold,fontFamily: 'Pacifico'),),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
