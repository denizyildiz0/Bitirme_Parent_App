import 'package:bitirme_parent_app/etkinlikler/etkinlik_detay.dart';
import 'package:bitirme_parent_app/etkinlikler/etkinlik_list.dart';
import 'package:bitirme_parent_app/etkinlikler/etkinlik_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EtkinlikListe extends StatefulWidget {
  const EtkinlikListe({Key? key}) : super(key: key);

  @override
  State<EtkinlikListe> createState() => _EtkinlikListeState();
}

class _EtkinlikListeState extends State<EtkinlikListe> {
  late final dynamic etkinlikProvider;

  @override
  void initState() {
    super.initState();

    // get tariflist provider
    etkinlikProvider = Provider.of<EtkinlikProvider>(context, listen: false);
  }

  void goToEtkinlik(int etkinlikIndex) {
    etkinlikProvider.currentEtkinlikIndex = etkinlikIndex;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EtkinlikDetay()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 162, 222, 255),
        title: Text("Eğlenceli Etkinlikler",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ))),

      body: Consumer<EtkinlikProvider>(
        builder: (context, value, child) {
          // get the etkinlik list
          final List<Etkinlik> etkinlik = value.etkinlikler;

          // return column UI
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
                Expanded(
                  child: ListView.builder(
                    itemCount: etkinlik.length,
                    itemBuilder: (context, index) {
                      // get individual tarif
                      final Etkinlik secilenetkinlik = etkinlik[index];
            
                      // return ListTile with custom design
                      return InkWell(
                        onTap: () => goToEtkinlik(index),
                        child: Container(
                          width: 390,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                           border: Border.all(
                            color: Color.fromARGB(23, 158, 158, 158),
                           ),
                            borderRadius: BorderRadius.circular(25),
                            ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      secilenetkinlik.etkinlikImage,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(width: 16,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              secilenetkinlik.etkinlikName,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(155, 0, 0, 0),
                                              ),
                                            ),
                                            IconButton(
                                              icon: Icon(secilenetkinlik.etkinlikIcon),
                                              onPressed: () {
                                                
                                              },
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Text(
                                          secilenetkinlik.etkinlikIngredients,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color:  Color.fromARGB(170, 50, 49, 49),
                                          ),
                                        ),
                                        SizedBox(height: 40,),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5,right: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(left: 15, right: 15, bottom: 7,top: 7),
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(194, 247, 247, 247),
                                                  border: Border.all(color: Color.fromARGB(255, 234, 37, 218)),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: Text(
                                                  secilenetkinlik.buttonname,
                                                  style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromARGB(255, 234, 37, 218),
                                                  ),
                                                ),
                                              )
                                          
                                            ],
                                          ),
                                        )
                                      ],
                                    ),)
                                ],
                              )
                              
                              
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


