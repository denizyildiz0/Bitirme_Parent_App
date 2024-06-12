import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SohbetKartlariScreen extends StatefulWidget {
  const SohbetKartlariScreen({super.key});

  @override
  State<SohbetKartlariScreen> createState() => _SohbetKartlariScreenState();
}

class _SohbetKartlariScreenState extends State<SohbetKartlariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(46, 49, 65, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 260,),
            InkWell(
              onTap: () {
                GoRouter.of(context).push('/sorbana');
              },
              child: Icon(
                Icons.help,
                color: Color.fromARGB(132, 255, 255, 255),
                size: 25,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(46, 49, 65, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sorbana.png",
                width: 250,
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push('/cocuktanEbeveyne');
                    },
                    child: Image.asset(
                      "assets/images/cocukebeveyn.jpg",
                      width: 150,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push('/ebeveyndenCocuga');
                    },
                    child: Image.asset(
                      "assets/images/ebeveyncocuk.jpg",
                      width: 150,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      GoRouter.of(context).push('/karsilikli');
                    },
                    child: Image.asset(
                      "assets/images/karsilikli.jpg",
                      width: 330,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
