import 'package:bitirme_parent_app/etkinlikler/etkinlik_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EtkinlikDetay extends StatelessWidget {
  const EtkinlikDetay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EtkinlikProvider>(
      builder: (context, value, child) {
        final etkinlik = value.etkinlikler;
        final currentEtkinlik = etkinlik[value.currentEtkinlikIndex ?? 0];
    
        return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 227, 220, 220),
        title: Text('Etkinlik Detayı')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Etkinliğin Çocuğumuza Kazanımları",
                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17),),
                    Icon(Icons.star,
                        color: Colors.amber,
                        size: 20,),
                  ],
                ),
                ),
                SizedBox(height: 10,),
                
                   kazanimlar("1.Beynin Gelişimini Sağlar"),
                   kazanimlar("2.Stresi Azaltır"),
                   kazanimlar("3.Beden Gelişimini Sağlar"),
                   kazanimlar("4.Sosyal Becerilerini Geliştirir"),
                   kazanimlar("5.Problem Çözme ve Karar Verme Yeteneği"),
                   kazanimlar("6.Görsel ve Yaratıcı Zeka"),
                   kazanimlar("7.Gözlem Yeteneği"),
                   kazanimlar("8.Duyusal Farkındalık"),
                   kazanimlar("9.Odaklanma ve Dikkat Becerileri"),
                   kazanimlar("10.Merak Duygusu",),
                  SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 120),
                         child: Text("Etkinlik Süreci",
                         style: TextStyle(fontSize: 18,
                         fontWeight: FontWeight.bold),),
                       ),
                       SizedBox(width: 5,),
                       Icon(Icons.extension,
                       color: Colors.orange,),
                     ],
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Malzemeler:",
                     style: TextStyle(fontSize: 15,
                     fontWeight: FontWeight.bold),),
                   ),
                   
                   for (String malzeme in currentEtkinlik.malzeme)
                   Text(malzeme),
                   SizedBox(height: 20,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text("Aşağıdaki adımları izleyin",
                          style: TextStyle(fontSize: 18,
                         fontWeight: FontWeight.bold),),
                        ),
                        Icon(Icons.cut,
                        color: Colors.orange,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    for (String imageDetay in currentEtkinlik.imageDetay)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(imageDetay),
           ),
          ],
        ),
      ),
     );
     },
    );
  }
  

  Widget kazanimlar(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(167, 48, 48, 48)),
      ),
    );
  }
}
