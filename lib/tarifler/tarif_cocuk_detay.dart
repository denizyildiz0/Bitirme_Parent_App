import 'package:bitirme_parent_app/components/neu_box.dart';
import 'package:bitirme_parent_app/tarifler/tarif_cocuk_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocukTarifDetay extends StatelessWidget {
  const CocukTarifDetay({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CocukTarifProvider>(
      builder: (context, value, child) {
        //get tariflist
        final ctarif = value.ctarif;
        //get current tarif index
        final currentCtarif = ctarif[value.currentCtarifIndex ?? 0];

        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //back button
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      //title
                      const Text("A F İ Y E T    O L S U N"),
                      //menu button
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      ),
                    ],
                  ),
                  NeuBox(
                    child: Column(
                      children: [
                        //image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(currentCtarif.image2),
                        ),
                        //song and artist name and icon
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      currentCtarif.name2,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    
                                    SizedBox(height: 5,),
                                  Text("Malzemeler:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  for (String ingredient in currentCtarif.ingredients2)
                                    Text(ingredient),
                                     SizedBox(height: 10,),
                                      Text("Hazırlanışı:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                    for (String description in currentCtarif.description2)
                                      Text(description),
                                      
                                  ],
                                ),
                              ),
                             ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
