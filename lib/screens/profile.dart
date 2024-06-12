import 'dart:io';
import 'package:bitirme_parent_app/bloc/client_cubit.dart';
import 'package:bitirme_parent_app/core/locazilations.dart';
import 'package:bitirme_parent_app/core/utils.dart';
import 'package:bitirme_parent_app/screens/loginScreen.dart';
import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'package:bitirme_parent_app/components/neu_box2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ClientCubit clientCubit;

  @override
  void initState() {
    super.initState();
    clientCubit = context.read<ClientCubit>();
  }

  clearData() {
    if (kIsWeb) {
      //web
      clearDataIOS();
    } else {
      if (Platform.isIOS || Platform.isMacOS) {
        clearDataIOS();
      } else {
        clearDataMaterial();
      }
    }
  }

  clearDataIOS() {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => CupertinoAlertDialog(
        title: Row(children: [Icon(Icons.warning), Text("Uyarı!")]),
        content: Text("Kullanıcıyı sileceksiniz emin misiniz?"),
        actions: [
          CupertinoDialogAction(
            onPressed: () async {
              final SharedPreferences storage =
                  await SharedPreferences.getInstance();
              await storage.clear();
              if (context.mounted) {
                context.go('/');
              }
            },
            child: Text("Yes"),
            isDestructiveAction: true,
          ),
          CupertinoDialogAction(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("No"),
          ),
        ],
      ),
    );
  }

  clearDataMaterial() async {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        title: Row(children: [Icon(Icons.warning), Text("Uyarı!")]),
        content: Text("Kullanıcıyı sileceksiniz emin misiniz?"),
        actions: [
          ElevatedButton(
            onPressed: () async {
              final SharedPreferences storage =
                  await SharedPreferences.getInstance();
              await storage.clear();
              if (context.mounted) {
                context.go('/');
              }
            },
            child: Text("Yes"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("No"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Opacity(
              opacity: 0.6,
              child: SvgPicture.asset(
                "assets/images/wave-10.svg",
                height: 250,
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 450),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.orange,
                    Color.fromARGB(255, 151, 145, 232),
                  ]),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/kadin1.jpeg"),
                    radius: 80,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 240),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Alessi Clark",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black87),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Center(
              child: NeuBoxx(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "K U L L A N I C I    B İ L G İ L E R İ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 12),

                    SizedBox(height: 5),
                    // Text(
                    //   AppLocalizations.of(context)
                    //       .getTranslate('E-Mail: $mail'),
                    //   style: GoogleFonts.comfortaa(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    SizedBox(height: 7),
                    Divider(),
                    Text(
                      "ŞİFRE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                    // Text(
                    //   AppLocalizations.of(context)
                    //       .getTranslate('Şifre: $password'),
                    //   style: GoogleFonts.comfortaa(
                    //     fontSize: 10,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    SizedBox(height: 7),
                    Divider(),
                    Text(
                      "AYARLAR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black54),
                    ),
                   
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 45.0),
                          child: IconButton(
                            onPressed: () {
                              if (clientCubit.state.language == "tr") {
                                clientCubit.changeLanguage(language: "en");
                              } else {
                                clientCubit.changeLanguage(language: "tr");
                              }
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Icon(Icons.language),
                            ),
                          ),
                        ),
                        if (clientCubit.state.darkMode)
                          IconButton(
                              onPressed: () {
                                clientCubit.changeDarkMode(darkMode: false);
                              },
                              icon: Icon(Icons.sunny))
                        else
                          IconButton(
                              onPressed: () {
                                clientCubit.changeDarkMode(darkMode: true);
                              },
                              icon: Icon(Icons.nightlight)),
                      ],
                    ),
                   
                    Divider(),
                    InkWell(
                      child: TextButton(
                        onPressed: clearDataIOS,
                        child: Text(
                          "Kullanıcıyı Sil",
                          style: TextStyle(
                              color: Color.fromARGB(221, 82, 43, 239)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 218, 217, 217)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        context.go('/');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 218, 217, 217),
                      ),
                      child: Text(
                        "Çıkış Yap",
                        style:
                            TextStyle(color: Color.fromARGB(221, 82, 43, 239)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: Opacity(
              opacity: 0.2,
              child: SvgPicture.asset(
                "assets/images/wave-8.svg",
                height: 160,
                width: 170,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigator(selectedIndex: 4),
    );
  }
}
