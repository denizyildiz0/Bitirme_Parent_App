
import 'package:bitirme_parent_app/etkinlikler/etkinlik.dart';

import 'package:bitirme_parent_app/screens/soruSor.dart';
import 'package:bitirme_parent_app/sohbet/sohbet_kart.dart';
import 'package:bitirme_parent_app/songs/songScreen.dart';
import 'package:bitirme_parent_app/tarifler/tarif_kart.dart';
import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';

import 'package:flutter/material.dart';

import '../core/locazilations.dart';

class AktiviteScreen extends StatefulWidget {
  const AktiviteScreen({Key? key});

  @override
  State<AktiviteScreen> createState() => _AktiviteScreenState();
}

class _AktiviteScreenState extends State<AktiviteScreen> {
  

  int index = 2;

  int _selectedImageIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    body: Stack(
      
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
                    _buildClickableImage(
                      imagePath: "assets/images/s.jpg",
                      text:  AppLocalizations.of(context).getTranslate("chat cards"),
                      index: 0,
                    ),
                    SizedBox(width: 20),
                    _buildClickableImage(
                      imagePath: "assets/images/etkinlik.jpg",
                      text:  AppLocalizations.of(context).getTranslate("events"),
                      index: 1,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    _buildClickableImage(
                      imagePath: "assets/images/c.jpg",
                      text:  AppLocalizations.of(context).getTranslate("children songs"),
                      index: 2,
                    ),
                    SizedBox(width: 20),
                    _buildClickableImage(
                      imagePath: "assets/images/h.jpg",
                      text:  AppLocalizations.of(context).getTranslate("snack recipes"),
                      index: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 100,
          left: 10,
          right: 10,
          child: Center(
            child: Text(
              AppLocalizations.of(context).getTranslate("let's have some fun"),
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
    bottomNavigationBar: const BottomNavigator(selectedIndex: 3),
    );
  }

  Widget _buildClickableImage({required String imagePath, required String text, required int index}) {
    return InkResponse(
      onTap: () {
        setState(() {
          _selectedImageIndex = index;
        });

        _navigateToScreen(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: _selectedImageIndex == index ? Colors.blue : Colors.transparent, width: 2.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imagePath,
                width: 145,
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToScreen(int index) {
    
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SohbetKartlariScreen()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => EtkinlikListe()));
        break;
        case 2:
          Navigator.push(context, MaterialPageRoute(builder: (context) => SongScreen()));
          break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => AtistirmalikTarifScreen()));
        break;
    }
  }
}







