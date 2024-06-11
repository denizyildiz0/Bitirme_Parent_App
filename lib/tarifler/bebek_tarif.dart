import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // GoRouter eklemeyi unutmayın
import 'package:bitirme_parent_app/tarifler/tarif_detay_screen.dart';
import 'package:bitirme_parent_app/tarifler/tarif_list.dart';
import 'package:bitirme_parent_app/tarifler/tarif_provider.dart';
import 'package:provider/provider.dart';

class BebekTarif extends StatefulWidget {
  const BebekTarif({Key? key}) : super(key: key);

  @override
  State<BebekTarif> createState() => _BebekTarifState();
}

class _BebekTarifState extends State<BebekTarif> {
  late final dynamic tarifProvider;

  @override
  void initState() {
    super.initState();

    // get tariflist provider
    tarifProvider = Provider.of<TarifProvider>(context, listen: false);
  }

  void goToTarif(int tarifIndex) {
    tarifProvider.currentTarifIndex = tarifIndex;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TarifDetay()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            GoRouter.of(context).go('/atistirma');
          },
        ),
      ),
      body: Consumer<TarifProvider>(
        builder: (context, value, child) {
          // get the tarif list
          final List<Tarif> tariflist = value.tariflist;

          // return column UI
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color.fromARGB(255, 229, 80, 255), Colors.purple],
                  ),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Bebek Tarifleri",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tariflist.length,
                  itemBuilder: (context, index) {
                    // get individual tarif
                    final Tarif tarif = tariflist[index];

                    // return ListTile with custom design
                    return InkWell(
                      onTap: () => goToTarif(index),
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [ Color.fromARGB(255, 209, 241, 255), Color.fromARGB(255, 209, 241, 255)],
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                tarif.image,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              tarif.name,
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 133, 132, 131)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
