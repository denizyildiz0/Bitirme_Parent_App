import 'package:bitirme_parent_app/components/neu_box.dart';
import 'package:bitirme_parent_app/tarifler/tarif_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TarifDetay extends StatelessWidget {
  const TarifDetay({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TarifProvider>(
      builder: (context, value, child) {
        //get tariflist
        final tariflist = value.tariflist;
        //get current tarif index
        final currentTarif = tariflist[value.currentTarifIndex ?? 0];

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
                          child: Image.asset(currentTarif.image),
                        ),
                        //song and artist name and icon
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currentTarif.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Malzemeler:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),

                                  // Ingredients listesini göstermek için döngü 
                                  for (String ingredient in currentTarif.ingredients)
                                    Text(ingredient),
                                    
                                    SizedBox(height: 10,),
                                    Text("Hazırlanışı:",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                                  for (String description in currentTarif.description)
                                    Text(description),
                                ],
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
