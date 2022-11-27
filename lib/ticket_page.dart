import 'package:flutter/material.dart';
import 'package:gotravel_project/modal/list_view_modal.dart';
import 'package:gotravel_project/pop_up.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import 'modal/color_class.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({required this.ticket});
  final Japan ticket;

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('Payments',style: TextStyle(fontSize: 16),),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(),
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  IconlyLight.arrow_left_circle,
                  color: buttonColor,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2.8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('${widget.ticket.image}')),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: Card(
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text('Ticket Details',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                                     SizedBox(
                                       height: 10,
                                     ),
                                     Text('Check The Amount Of Tickets',style: TextStyle(),),
                                   ],
                                 ),
                                 SizedBox(
                                   height: 30,
                                 ),
                                 ListTile(
                                   contentPadding: EdgeInsets.zero,
                                   leading: Icon(IconlyLight.ticket,size: 60,color: Colors.grey[700],),
                                   title: Text('${widget.ticket.title}',style: TextStyle(fontSize: 18.5,fontWeight: FontWeight.w700),),
                                   subtitle: Text('${widget.ticket.subtitle}',style: TextStyle(),),
                                   trailing: Row(
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Icon(IconlyLight.plus,size: 18.5,color: Color(0xff130F26),),
                                       SizedBox(
                                         width: 15,
                                       ),
                                       Icon(Icons.remove_circle_outline,size: 18.5,color: Color(0xff130F26),),
                                     ],
                                   ),
                                 ),
                                 SizedBox(
                                   height: 15,
                                 ),
                                 Text('ticket purchases include the benefits obtained according tothe information provided'),
                                 SizedBox(
                                   height: 40,
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text('Payments Via',style: TextStyle(fontSize: 18.5,fontWeight: FontWeight.w700,color: Colors.black)),
                                     ElevatedButton(
                                         style: ElevatedButton.styleFrom(
                                           primary: Colors.white,
                                         ),
                                         onPressed: (){},
                                         child: Text('Visa',style: TextStyle(color: Colors.black),) )
                                   ],
                                 ),

                               ],
                        ),
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Price',style: TextStyle(color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.w700,fontSize: 18),),
                          Text('${widget.ticket.price}',style: TextStyle(color: buttonColor,fontWeight: FontWeight.w700,fontSize: 25),),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                        primary: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                        ),
                            onPressed: (){
                             showDialog(
                                 context: context,
                                 builder: (context)=>Dialog(

                                   child: Padding(
                                     padding: const EdgeInsets.all(15),
                                     child: Container(
                                         height: 400,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Container(
                                             height: MediaQuery.of(context).size.height/4,
                                             decoration: BoxDecoration(
                                               image: DecorationImage(
                                                   fit: BoxFit.fill,
                                                   image: NetworkImage('https://www.90daykorean.com/wp-content/uploads/2019/05/friends-travel.png',),),
                                             ),
                                           ),
                                           SizedBox(
                                             height: 30,
                                           ),
                                           Text('Payments Success',style: TextStyle(color: buttonColor,fontSize: 27,fontWeight: FontWeight.w700),),
                                           SizedBox(
                                             height: 10,
                                           ),
                                           Text('Your payment has been confirmed you can check your ticket now',style: TextStyle(fontSize: 14),),
                                           SizedBox(
                                             height: 30,
                                           ),
                                           Container(
                                             height: 60,
                                             width: double.infinity,
                                             decoration: BoxDecoration(
                                               color: buttonColor,
                                               borderRadius: BorderRadius.circular(20),
                                             ),
                                             child: ElevatedButton(

                                                 style: ElevatedButton.styleFrom(
                                                     primary: buttonColor,
                                                     shape: RoundedRectangleBorder(
                                                       borderRadius: BorderRadius.circular(12),
                                                     )
                                                 ),
                                                 onPressed: (){},
                                                 child: Text('Check Your Ticket',style: TextStyle(fontSize: 22,color: Colors.white))),
                                           )
                                         ],
                                       ),
                                     ),
                                   ),
                                 

                                 ));
                            },
                            child: Text('Book Now',style: TextStyle(fontSize: 22,color: Colors.white))),
                      )
                    ],
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
