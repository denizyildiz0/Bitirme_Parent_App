import 'package:bitirme_parent_app/screens/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'core/routes.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
    );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
    debugShowCheckedModeBanner: false,
      routerConfig: routes,
      
    );
  }
}

