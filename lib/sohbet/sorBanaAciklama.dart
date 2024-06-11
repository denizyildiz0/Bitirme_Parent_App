import 'package:flutter/material.dart';

class SorBanaAciklama extends StatelessWidget {
  const SorBanaAciklama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(46, 49, 65, 1),
          title: Text(
            "Oyun Açıklaması",
            style: TextStyle(color: const Color.fromARGB(149, 255, 255, 255)),
          )),
      backgroundColor: const Color.fromRGBO(46, 49, 65, 1),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Text(
            "-Ebeveynler ve (7 yaş üzeri) çocukları için:",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "En az bir ebeveyn ve bir çocuk ile oynanır. Üst limit yoktur, istediğiniz sayıda aile üyesi ile oynayabilirsiniz. İlk soruyu soracak kişi zarı atar ve zarda gelen renge ait kartı çeker. Karttaki soruyu sesli bir şekilde okur ve cevaplamasınını istediği ilk kişinin ismini söyler.İsmi söylenen kişi ve sonrasında sırayla (soruyu soran kişi dahil) oyundaki herkes soruyu cevaplar.(İstisna olarak; mavi kartlardaki soruları yalnızca çocuklar sorar ve ebeveynler cevaplar.Yeşil renkteki sorular ise karşılıklı sorulur ve cevaplanır.) Devamında aynı şekilde herkes sırası geldiğinde zarı atar, ilgili kartı çekip okur ve oyun bu şekilde devam eder.",
            style: TextStyle(
                color: const Color.fromARGB(203, 255, 255, 255), fontSize: 17),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "Bir ebeveynden kastınız 'anne' ya da 'baba' ise kullanılamaz.Ebeveyn; anne ve baba demektir. Tek bir kelime iki kişiyi niteler. En az bir erişkin ve bir çocuk ile oynanır denebilir. Ya da Anne ya da babadan biri ve bir çocuk ile oynanır denebilir.",
              style: TextStyle(
                color: const Color.fromARGB(203, 255, 255, 255), fontSize: 17),),
        
        ]),
      ),
    );
  }
}
