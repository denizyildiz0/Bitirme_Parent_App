import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:bitirme_parent_app/bloc/client_cubit.dart';
import 'package:bitirme_parent_app/core/locazilations.dart';
import 'package:bitirme_parent_app/screens/loginScreen.dart';
import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




// // Uygulama için güvenli veri depolama işlemlerini yöneten sınıf
// class SecureStorage {
//   // FlutterSecureStorage nesnesi oluşturulur
//   final FlutterSecureStorage storage = const FlutterSecureStorage();

//   // Veri depolamak için kullanılan fonksiyon
//   writeSecureData(String key, String value) async {
//     await storage.write(key: key, value: value);
//   }

//   // Veriyi okumak için kullanılan fonksiyon
//   readSecureData(String key) async {
//     // Veriyi okurken ekrana yazdırılır
//     String value = await storage.read(key: key) ?? "Data is not found!";
//     print('Data read from secure storage: $value');
//   }

//   // Veriyi silmek için kullanılan fonksiyon
//   deleteSecureData(String key) async {
//     await storage.delete(key: key);
//   }
// }


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  // void navigateToLogin(BuildContext context) {
  //   Navigator.pushAndRemoveUntil(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginScreen()),
  //     (Route<dynamic> route) => false,
  //   );
  // }

  
  
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ClientCubit clientCubit;
  File? _image;
  final ImagePicker picker = ImagePicker();

//  @override
//   void initState() {
//     init();
//     super.initState();
//     clientCubit = context.read<ClientCubit>();
    
//   }

  // String? mail;
  // String? password;

  // init() async {
  //   await SecureStorage().readSecureData("mail");
  //   await SecureStorage().readSecureData("password");
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   mail = prefs.getString('usernameLogin');
  //   password = prefs.getString("passwordLogin");
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/' +
                                (Theme.of(context).brightness == Brightness.dark
                                    ? 'logo_white.png'
                                    : 'logo.png')),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Gap(210),
                    Padding(
                      padding: const EdgeInsets.only(top: 45),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: IconButton(
                              onPressed: () {
                                // if (clientCubit.state.language == "tr") {
                                //   clientCubit.changeLanguage(language: "en");
                                // } else {
                                //   clientCubit.changeLanguage(language: "tr");
                                // }
                              },
                              icon: Icon(Icons.language),
                            ),
                          ),
                          // if (clientCubit.state.darkMode)
                          //   IconButton(
                          //       onPressed: () {
                          //         clientCubit.changeDarkMode(darkMode: false);
                          //       },
                          //       icon: Icon(Icons.sunny))
                          // else
                          //   IconButton(
                          //       onPressed: () {
                          //         clientCubit.changeDarkMode(darkMode: true);
                          //       },
                          //       icon: Icon(Icons.nightlight)),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.3),
                        ),
                        child: _image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(
                                  File(_image!.path),
                                  fit: BoxFit.cover,
                                ),
                              )
                            : const SizedBox(),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 140,
                      child: GestureDetector(
                        onTap: () {
                          //  _pickImage();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                            border: Border.all(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                              width: 0.3,
                            ),
                          ),
                          child: Icon(
                            Icons.edit,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Center(
                  child: Column(
                    children: [
                      // Text(
                      //   AppLocalizations.of(context)
                      //       .getTranslate('E-Mail: $mail'),
                      //   style: GoogleFonts.comfortaa(
                      //     fontSize: 18,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // Text(
                      //   AppLocalizations.of(context)
                      //       .getTranslate('Şifre: $password'),
                      //   style: GoogleFonts.comfortaa(
                      //     fontSize: 10,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Gap(10),
                Container(
                  height: 1,
                  color: const Color.fromARGB(255, 216, 216,
                      216), // Optional: You can change the color of the line
                ),
                SizedBox(height: 20),
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/edit');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 20,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                        Gap(5),
                        Text(
                          AppLocalizations.of(context)
                              .getTranslate("Profil Düzenle"),
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    )),
                Gap(20),
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/address');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                        Gap(5),
                        Text(
                          AppLocalizations.of(context).getTranslate("Adres"),
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    )),
                Gap(20),
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/notification');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_outlined,
                          size: 20,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                        Gap(5),
                        Text(
                          AppLocalizations.of(context)
                              .getTranslate("Bildirimler"),
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    )),
                Gap(20),
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go('/security');
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.verified_user_outlined,
                          size: 20,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                        Gap(5),
                        Text(
                          AppLocalizations.of(context).getTranslate("Güvenlik"),
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                      ],
                    )),
                Gap(20),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go('/privacy');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 20,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                      Gap(5),
                      Text(
                        AppLocalizations.of(context)
                            .getTranslate("Politikalar"),
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go('/help');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                      ),
                      Gap(5),
                      Text(
                        AppLocalizations.of(context).getTranslate("Yardım"),
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                
                Gap(20),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).go('/boarding');
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        size: 20,
                        color: Colors.red,
                      ),
                      Gap(5),
                      Text(
                        AppLocalizations.of(context)
                            .getTranslate("Oturumu Kapat"),
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigator(selectedIndex: 4),
      );
  }
}