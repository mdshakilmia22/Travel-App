
import 'package:flutter/material.dart';
import 'package:gotravel_project/modal/list_view_modal.dart';
import 'package:gotravel_project/ticket_page.dart';
import 'package:iconly/iconly.dart';

class DestiNation extends StatelessWidget {
  const DestiNation({super.key, required this.item, required this.data});
  final int item;
  final Japan data;

  @override
  Widget build(BuildContext context) {
    if(item==1){
      return Text(' (富士宮市 Fujinomiya-shi) adalah kota yang terletak di Prefektur Shizuoka, Jepang. Pada 1 Februari 2020, kota ini memiliki perkiraan populasi 128,342 dan kepadatan penduduk 330 orang per km². Total wilayah kota adalah 389.08 km².',
      style: TextStyle(height: 2,fontSize: 12),);
    }
    else if(item==2){
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(IconlyLight.home,color: Colors.black,size: 30,),
              ),
              title: Text('Hotel',style: TextStyle(fontWeight: FontWeight.w500,),),
              subtitle: Text('Charme Spagna Boutique Hotel'),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> TicketPage(ticket: data)));
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(IconlyLight.ticket,color: Colors.black,size: 30,),
                ),
                title: Text('Ticket',style: TextStyle(fontWeight: FontWeight.w500,),),
                subtitle: Text('1 ticket for one trip home and away'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(IconlyLight.star,color: Colors.black,size: 30,),
              ),
              title: Text('The best Food',style: TextStyle(fontWeight: FontWeight.w500,),),
              subtitle: Text('Daily meals for each vacation'),
            ),
          ],
        ),
      );
    }
    else{
      return ListView.builder(
         padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: iconimage.length,
          itemBuilder: (_,index){

            return ListTile(
              leading: Container(

                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(iconimage[index]))
                ),
              ),
              title: Text(icontitle[index],style: TextStyle(fontWeight: FontWeight.w500),),
              subtitle: Text(iconsubtitle[index]),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          });
    }
  }
}
