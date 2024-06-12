import 'package:bitirme_parent_app/core/themess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:bitirme_parent_app/bloc/client_cubit.dart';
import 'package:bitirme_parent_app/blog/blog_detay_provider.dart';
import 'package:bitirme_parent_app/etkinlikler/etkinlik_provider.dart';
import 'package:bitirme_parent_app/screens/consts.dart';
import 'package:bitirme_parent_app/songs/playlist_provider.dart';
import 'package:bitirme_parent_app/tarifler/tarif_cocuk_provider.dart';
import 'package:bitirme_parent_app/tarifler/tarif_provider.dart';
import 'package:bitirme_parent_app/themes/theme_provider.dart';

import 'core/routes.dart';
import 'package:provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlayListProvider()),
        ChangeNotifierProvider(create: (context) => TarifProvider()),
        ChangeNotifierProvider(create: (context) => CocukTarifProvider()),
        ChangeNotifierProvider(create: (context) => EtkinlikProvider()),
        ChangeNotifierProvider(create: (context) => BlogProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClientCubit(
        ClientState(darkMode: false, language: "en"),
      ),
      child: BlocBuilder<ClientCubit, ClientState>(builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
          themeMode: state.darkMode ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,

        );
      }),
    );
  }
}
