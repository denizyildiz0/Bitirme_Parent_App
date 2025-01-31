import 'package:bitirme_parent_app/sohbet/image_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


class EbeveyndenCocugaSoru extends StatefulWidget {
  const EbeveyndenCocugaSoru({super.key});

  @override
  State<EbeveyndenCocugaSoru> createState() => _EbeveyndenCocugaSoruState();
}

class _EbeveyndenCocugaSoruState extends State<EbeveyndenCocugaSoru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(46, 49, 65, 1),
        title: Text(''),
      ),
      backgroundColor: const Color.fromRGBO(46, 49, 65, 1),
      body: Column( 
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sorunu Seç Ve Sormaya Başla",
              style: TextStyle(color: const Color.fromARGB(186, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 30,),
          Swiper(
            layout: SwiperLayout.STACK,
            itemHeight: 550,
            itemWidth: 300,
            loop: true,
            duration: 1200,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image2[index],
                fit: BoxFit.cover,
              ),
            ),
            itemCount: image2.length,
          ),
        ],
      ),
    );
  }
}
