import 'package:flutter/cupertino.dart';
import 'package:iconly/iconly.dart';

class Japan{
  String?image;
  String?title;
  String?subtitle;
  String?price;
  double?rating;
  Japan({this.image, this.title, this.subtitle, this.price,this.rating});
}
List<Japan> vistjapan=[
  Japan(
    image: 'https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    title: 'Fujinomiya',
    subtitle: 'Japan',
    price: '\$250',
    rating: 4.5,
  ),
  Japan(
    image: 'https://images.unsplash.com/photo-1584830286962-07c9d5256c80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    title: 'Fusimi Inri',
    subtitle: 'Japan',
    price: '\$280',
    rating: 4.6,
  ),
  Japan(
    image: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/a9/8b/44/sea-beach.jpg?w=1200&h=-1&s=1',
    title: 'Kuakata',
    subtitle: 'Bangladesh',
    price: '\$100',
    rating: 4.8,
  ),
  Japan(
      image: 'https://media.istockphoto.com/photos/the-fishing-boat-on-beach-at-sunset-moment-coxs-bazar-bangladesh-picture-id1387459490?k=20&m=1387459490&s=612x612&w=0&h=ZXbt4Mvpqgz0rR8fLP3aNMOYN_-ZBTyhTxObQOZOQsw=',
      title: 'Senmartin',
      subtitle: 'Bangladesh',
      price: '\$120',
      rating: 5.0,
  ),
  Japan(
      image: 'https://www.transindiatravels.com/wp-content/uploads/the-taj-mahal-agra.jpg',
      title: 'TajMahal',
      subtitle: 'India',
      price: '\$150',
      rating: 4.8,
  ),
  Japan(
      image: 'https://upload.wikimedia.org/wikipedia/commons/7/70/Neeulm_Valley_AJK_%28Arang_Kel%29.jpg',
      title: 'Azadkasmir',
      subtitle: 'Pakisthan',
      price: '\$180',
      rating: 9.0,
  ),
  Japan(
      image: 'https://assets.vogue.in/photos/5ce431b346cf5953f8b18c74/master/pass/featured.2.jpg',
      title: 'Kathmandu',
      subtitle: 'Nepal',
      price: '\$130',
      rating: 3.2,
  ),

];
List<String> catagoryName=[
  'Japan',
  'Italia',
  'Africa',
  'Bangladesh',

  'India',
  'Pakistan',
  'Afganisthan',
  'Sri-Lanka',
];
List<String> catagoryImage=[
  'https://images.unsplash.com/photo-1504109586057-7a2ae83d1338?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1033&q=80',
  'https://images.unsplash.com/photo-1656002626925-44546818b6f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  'https://www.ilviaggiatoreinconsueto.it/wp-content/uploads/2021/04/mariola-grobelska-xdSDchtfZHI-unsplash.jpg',
  'https://media.istockphoto.com/photos/flag-of-bangladesh-waving-in-the-wind-against-white-cloudy-blue-sky-picture-id1077100194?k=20&m=1077100194&s=612x612&w=0&h=ap_UzKBcKbppSeUfAzKxwcq-dQhz0tXTlP0TI8yb_HM=',
  'https://images.news18.com/ibnlive/uploads/2021/08/national-flag.jpg',
  'https://i.pinimg.com/736x/80/fb/58/80fb588f2340031a1f4f9585618412c6.jpg',
  'https://thestreetjournal.org/wp-content/uploads/2021/08/Afghan-Flag.jpg',
  'https://live.staticflickr.com/8085/8439382237_32f4694786_b.jpg',
];

List<String> iconimage=[
  'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/02/8b/d7/caption.jpg?w=1200&h=1200&s=1',
  'https://www.kanpai-japan.com/sites/default/files/styles/content_xs/public/uploads/2022/01/tanukiko-fuji-lake-4.jpg',
  'https://media-cdn.tripadvisor.com/media/photo-s/0a/b2/73/d0/the-jimba-waterfalls.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/2/21/Cox%27s_Bazar_Sunset.JPG',
  'https://amaderkhabor.com/wp-content/uploads/2021/11/%E0%A6%AC%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%A6%E0%A6%B0%E0%A6%AC%E0%A6%BE%E0%A6%A8-%E0%A6%AD%E0%A7%8D%E0%A6%B0%E0%A6%AE%E0%A6%A3.jpg',
  'https://dhakato.com/wp-content/uploads/2021/12/Dhaka-to-Khagrachari.jpg',

];
List<String> icontitle=[
  'Shiraito Falls',
  'Lake Tanuki',
  'Jimba Waterfalls',
  'Cox\'s bazar',
  'Bandorbon',
  'Khagracori',
];
List<String> iconsubtitle=[
  '3 KM',
  '4 KM',
  '5 KM',
  '15 KM',
  '12 KM',
  '17 KM',
];
