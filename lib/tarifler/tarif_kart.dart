import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AtistirmalikTarifScreen extends StatefulWidget {
  const AtistirmalikTarifScreen({Key? key}) : super(key: key);

  @override
  State<AtistirmalikTarifScreen> createState() =>
      _AtistirmalikTarifScreenState();
}

class _AtistirmalikTarifScreenState extends State<AtistirmalikTarifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.amber,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/arka.png'), // Arka plan resminin yolunu belirtin
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).go('/aktivite');
          },
        ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).go('/bebek');
                  },
                  child: Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 142, 187, 255),
                            Color.fromARGB(255, 83, 68, 244),
                            Color.fromARGB(255, 2, 20, 122),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 48, 13, 228)
                                .withOpacity(0.5), // Adjust the color and opacity
                            blurRadius: 15,
                            spreadRadius: 10,
                            offset: Offset(1, 3),
                          )
                        ]),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Bebeğiniz İçin',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 70,),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).go('/cocuk');
                  },
                  child: Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 162, 233),
                            Color.fromARGB(255, 240, 52, 171),
                            Color.fromARGB(255, 138, 3, 98),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 223, 11, 156)
                                .withOpacity(0.5), // Adjust the color and opacity
                            blurRadius: 15,
                            spreadRadius: 10,
                            offset: Offset(1, 3),
                          )
                        ]),
                    child: Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Çocuklarınız ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  've',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Kendiniz İçin',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
