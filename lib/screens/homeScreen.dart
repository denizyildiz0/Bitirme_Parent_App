import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Günün Sözü",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                
                SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    "assets/images/slio.jpg", 
                    width: 350,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Önerilen Ebeveyn Çözümleri",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 6),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BlogKutu("assets/images/blog1.jpg"), 
                      BlogKutu("assets/images/blog5.jpg"), 
                      BlogKutu("assets/images/blog7.jpg"), 
                      BlogKutu("assets/images/blog10.jpg"), 
                      BlogKutu("assets/images/blog4.jpg"), 
                      BlogKutu("assets/images/blog3.jpg"), 
                      BlogKutu("assets/images/blog8.jpg"), 
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Popüler Aramalar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                   color: Colors.black,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BlogArama("Hırçınlık"),
                      BlogArama("Zorbalık"),
                      BlogArama("Sınır Koyma"),
                      BlogArama("Tırnak Yeme"),
                      BlogArama("Üstün Zeka"),
                      BlogArama("Mükemmelliyetçilik"),
                      BlogArama("İnatçılık"),
                      BlogArama("Utangaçlık"),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Eğlence Zamanı...",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        EtkinlikKutu("assets/images/s.jpg"), 
                        EtkinlikKutu("assets/images/etkinlik.jpg"), 
                        EtkinlikKutu("assets/images/c.jpg"), 
                        EtkinlikKutu("assets/images/h.jpg"), 
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bu Haftanın Bülteni",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/anaodev.jpg", 
                        width: 350,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Öneri ve İstekler İçin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/oneri.jpg", 
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(selectedIndex: 0),
    );
  }
  Padding BlogKutu(String photo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              photo,
              width: 120,
            ),
          )
        ],
      ),
    );
  }

  Padding EtkinlikKutu(String photo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              photo,
              width: 100,
            ),
          )
        ],
      ),
    );
  }

  Padding BlogArama(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(85, 218, 217, 217),
              ),
            ),
          ),
        ],
      ),
        
    );
  }
}


