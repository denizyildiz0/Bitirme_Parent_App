import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  loadData() async {
    //hafıza okuma dil tema

    Future.delayed(const Duration(milliseconds: 2500), () {
      context.go("/boarding");
    });
  }

  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/splogo.jpg",
                  width: 120,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: CircularProgressIndicator(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
