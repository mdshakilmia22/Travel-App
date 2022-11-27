import 'package:flutter/material.dart';
import 'package:gotravel_project/destination_details.dart';
import 'package:gotravel_project/modal/color_class.dart';
import 'package:gotravel_project/modal/list_view_modal.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                color: backgrundColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello John willy',
                                  style: TextStyle(color: Color(0xffD1D1D1), fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Discover Your Destination For Holiday',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 6),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg'))),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search Location...',
                          hintStyle: TextStyle(),
                          suffixIcon: Icon(
                            IconlyLight.search,
                            color: buttonColor,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    HorizontalList(
                        spacing: 20,
                        itemCount: catagoryImage.length,
                        itemBuilder: (_,index){
                          return Container(
                           // height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
                              child: Row(
                                children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(catagoryImage[index]))
                                  ),
                                ),

                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(catagoryName[index],),
                                ],
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('Upcoming',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
                        SizedBox(
                          width: 40,
                        ),
                        Text('Recent',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height/4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: vistjapan.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>DestinationPage(visit: vistjapan[index])));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width/2.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height/6,
                                            width: MediaQuery.of(context).size.width/2.35,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image:
                                                NetworkImage('${vistjapan[index].image}'),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 60,
                                                height: 33,
                                                decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color: Color(0xffC0C7FF).withOpacity(.5),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Row(
                                                  children: [
                                                    Icon(IconlyBold.star,color: Colors.white,size: 17,),
                                                    SizedBox(width: 5,),
                                                    Text('${vistjapan[index].rating}',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),)

                                                  ],
                                                ),
                                              ),

                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 10, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                           '${vistjapan[index].title}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                           '${vistjapan[index].subtitle}',
                                                style: const TextStyle(
                                                    color: Colors.grey),
                                              ),
                                              Text(
                                                  '${vistjapan[index].price}',
                                                style: const TextStyle(
                                                    color: buttonColor,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
