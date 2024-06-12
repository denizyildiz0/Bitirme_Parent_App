import 'package:bitirme_parent_app/bloc/client_cubit.dart';
import 'package:bitirme_parent_app/components/neu_box2.dart';
import 'package:bitirme_parent_app/core/locazilations.dart';
import 'package:bitirme_parent_app/core/utils.dart';
import 'package:bitirme_parent_app/screens/loginScreen.dart';
import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grock/grock.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ClientCubit clientCubit;
  

  @override
  void initState() {
    init();
    super.initState();
    clientCubit = context.read<ClientCubit>();
    
  }

  String? mail;
  String? password;

  init() async {
    await SecureStorage().readSecureData("mail");
    await SecureStorage().readSecureData("password");
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    mail = prefs.getString('usernameLogin');
    password = prefs.getString("passwordLogin");
    setState(() {});
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

  

  File? dosya;

  profilPhotoUpdate() async {
    try {
      ImagePicker picker = ImagePicker();
      XFile? secilenDosya = await picker.pickImage(
          source: ImageSource.gallery, requestFullMetadata: false);
      if (secilenDosya == null) {
        setState(() {
          dosya = null;
        });
        return;
      }
      var fileLength = await secilenDosya.length();
      print(fileLength);

      setState(() {
        dosya = File(secilenDosya.path);
      });
    } on Exception catch (e) {
      print("hata");
      print("e");
    }
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
                padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
                      Positioned(
              bottom: 553,
              right: 130,
              child: GestureDetector(
                onTap: () {
                  },
                child: Stack(
                  children: [
                    Container(
                      width: 40, // Genişlik
                      height: 40, 
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black,
                      ),
                      child: IconButton(
                        onPressed: profilPhotoUpdate,
                        icon: Icon(
                          Icons.edit,
                          color: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          if (dosya != null) Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 113.5, left: 146.5),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(dosya!),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 240),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    AppLocalizations.of(context)
                        .getTranslate("user information"),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                    ),
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
                      AppLocalizations.of(context).getTranslate("e-mail"),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      AppLocalizations.of(context).getTranslate('$mail'),
                      style: GoogleFonts.comfortaa(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Divider(),
                    Text(
                      AppLocalizations.of(context).getTranslate("password"),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      AppLocalizations.of(context).getTranslate('$password'),
                      style: GoogleFonts.comfortaa(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Divider(),
                    Text(
                      AppLocalizations.of(context).getTranslate("settings"),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
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
                            icon: Icon(Icons.sunny),
                          )
                        else
                          IconButton(
                            onPressed: () {
                              clientCubit.changeDarkMode(darkMode: true);
                            },
                            icon: Icon(Icons.nightlight),
                          ),
                      ],
                    ),
                    Divider(),
                    InkWell(
                      child: TextButton(
                        onPressed: clearDataIOS,
                        child: Text(
                          AppLocalizations.of(context)
                              .getTranslate("delete user"),
                          style: TextStyle(
                            color: Color.fromARGB(221, 82, 43, 239),
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 218, 217, 217),
                          ),
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
                        AppLocalizations.of(context).getTranslate("log out"),
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
