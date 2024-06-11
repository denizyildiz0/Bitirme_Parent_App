import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:preload_page_view/preload_page_view.dart';

import '../../core/storage.dart';



class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PreloadPageView(
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: [
          Stack(
            children: [
              Center(
                  child: Image.asset(
                    "assets/images/anneb.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 120, 
                  left: 40, 
                  right: 30, 
                  child: Center(
                    child: Text(
                      "Çocuklarınızın sorunlarına yanıt bulmak için doğru adrestesiniz!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              
              // Bottom Navigator Bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 70,
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        page == 0
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Colors.black87,
                      ),
                      Icon(
                        page == 1
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Colors.black87,
                      ),
                      Icon(
                        page == 2
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Colors.black87,
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Center(
                  child: Image.asset(
                    "assets/images/annebebek.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 120, 
                  left: 40, 
                  right: 30, 
                  child: Center(
                    child: Text(
                      "Size özel makalelerimiz sayesinde bebeklerinizde olan sorunlar hakkında tecrübe sahibi olun...",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              // Bottom Navigator Bar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 70,
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        page == 0
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                      ),
                      Icon(
                        page == 1
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                      ),
                      Icon(
                        page == 2
                            ? CupertinoIcons.circle_filled
                            : CupertinoIcons.circle,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                      ),
                      
                    ],
                  ),
                ),
              ),

            ],
          ),
          Stack(
            children: [
              Center(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ImageContainer(
                      imagePath: "assets/images/s.jpg",
                      text: "SOHBET KARTLARI",
                    ),
                    SizedBox(width: 20),
                    ImageContainer(
                      imagePath: "assets/images/etkinlik.jpg",
                      text: "ETKİNLİKLER",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ImageContainer(
                      imagePath: "assets/images/c.jpg",
                      text: "ÇOCUK ŞARKILARI",
                    ),
                    SizedBox(width: 20),
                    ImageContainer(
                      imagePath: "assets/images/h.jpg",
                      text: "ATIŞTIRMALIK TARİF",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 40,
          right: 10,
          child: Center(
            child: Text(
              "Çocuklarınızla neşeli vakit geçirmek için aktivitelerimizle tanışın...",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
      bottom: 60,
      left: 60,
      child: InkWell(
        onTap: () async {
          final storage = Storage();
          await storage.firstLaunched();
          GoRouter.of(context).replace("/home");
        },
        child: Container(
          width: 280,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
  ],
),
        ],
      ),
      
    );


  }
  Widget ImageContainer({required String imagePath, required String text}) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              imagePath,
              width: 150,
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Color.fromARGB(168, 255, 255, 255),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}


