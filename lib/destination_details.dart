import 'package:flutter/material.dart';
import 'package:gotravel_project/destination_page.dart';
import 'package:gotravel_project/modal/color_class.dart';
import 'package:gotravel_project/modal/list_view_modal.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

class DestinationPage extends StatefulWidget {
  DestinationPage({required this.visit});
  late Japan visit;
  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {

  int selectedIndex=1;

  List<String> destname=[
    'About',
    'Benifit',
    'Heilight',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(

            decoration: BoxDecoration(

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Your Trip Count'),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text('${widget.visit.price}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    child: Text('Book Now',style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20),),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Icon(IconlyLight.arrow_left_circle,color: buttonColor,size: 30,)),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
              Container(
                height: MediaQuery.of(context).size.height/2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('${widget.visit.image}'))
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('Duration',style: TextStyle(fontSize: 13),),
                              SizedBox(
                                height: 8,
                              ),
                              Text('6 Days',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Text('Participent',style: TextStyle(fontSize: 13),),
                              SizedBox(
                                height: 8,
                              ),
                              Text('30 Pepole',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                            ],
                          ),
                          Column(
                            children: [
                              Text('Landing',style: TextStyle(fontSize: 13),),
                              SizedBox(
                                height: 8,
                              ),
                              Text('2 Stop',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.visit.title}',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(IconlyLight.location),
                          SizedBox(width: 8,),
                          Text('${widget.visit.subtitle}')
                        ],
                      ),
                      Row(
                        children: [
                          Icon(IconlyBold.star,color: buttonColor,),
                          SizedBox(
                            width: 8,
                          ),
                          Text('${widget.visit.rating} (2.220)'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex==1?buttonColor:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('About',style: TextStyle(
                                color: selectedIndex==1?Colors.white:Colors.black,
                                fontSize: 18),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=2;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex==2?buttonColor:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Benifits',style: TextStyle(
                                color: selectedIndex==2?Colors.white:Colors.black,
                                fontSize: 18),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=3;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedIndex==3?buttonColor:Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Highlight',style: TextStyle(
                                color: selectedIndex==3?Colors.white:Colors.black,
                                fontSize: 18),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                 DestiNation(item: selectedIndex, data: widget.visit,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
