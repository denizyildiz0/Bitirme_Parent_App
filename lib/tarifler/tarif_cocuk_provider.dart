import 'package:bitirme_parent_app/tarifler/tarif_list_cocuk.dart';
import 'package:flutter/material.dart';



class CocukTarifProvider extends ChangeNotifier {
  final List<Ctarif> _ctarif = [
    
   
    Ctarif(
       name2: "Domates Soslu Köfte",
       image2: "assets/images/c2.jpg",
       ingredients2: ["- 500 gram kıyma","- 1 diş sarımsak","- 1 bardak galeta unu","- 1 yumurta","- 1 çimdik karabiber","- 3 domates rendesi","- 4 yaprak taze fesleğen","- 1 küçük soğan"],
       description2: ["Tüm malzemeleri yoğur ve şekil ver","bir tavada domates, soğan ve","fesleğeni kavur ardından köfteleri","borcama diz ve sosu üzerine dök","fırına ver pişsin."]  
     ),
    Ctarif(
      name2: "Kıymalı Brokoli Çorbası",
      image2: "assets/images/c3.jpg",
      ingredients2: ["- 2 kere çekilmiş kıyma","- 1 arpacık soğan","- 3 çiçek brokoli","- 1 adet havuç","- 1 adet patates","- 1 çorba kaşığı şehriye"],
      description2: ["Kıyma kavrulur ve üzerine soğan","ekleniir. Daha sonra havuç, patates,","brokoli ilave edilir, üzerini geçecek kadar","su eklenir. Kaynayınca şehriye eklenir","Son olarak blenderden geçirilir."],
      ),
    Ctarif(
       name2: "Balık Köftesi",
       image2: "assets/images/c4.jpg",
       ingredients2: ["- 1 tahıllı ekmek kırıntısı","- 1 dilim somon balığı fileto","- 1 sap taze soğan","- 1 yumurta","- zeytinyağı"],
       description2: ["Tüm malzemeleri bir kaba koy ve","iyice yoğur karışımdan minik","parçalar al ve köfte şekli ver.","Bir tavaya ya koyarak köfteleri","yavaşça pişir"]  
     ),
      
    Ctarif(
      name2: "Balkabağı Topları",
      image2: "assets/images/c5.jpg",
      ingredients2: ["- çeyrek balkabağı","- 1yk yulaf ezmesi","- 1/2 çay kaşığı buğday ruşeym","- 1 tatlı kaşığı labne"],
      description2: ["Yulaf ezmesi ve balkabağını suda","pişirin.Soğuduktan sonra labne ve ","ruşeymi ekleyin. Az zeytinyağı döküp","topçuklar yapın, servis edin"],
      ),
    Ctarif(
       name2: "Ispanaklı Çubuklar",
       image2: "assets/images/c6.jpg",
       ingredients2: ["- 1 haşlanmış patates","- 4 yaprak ıspanak","- 1 yumurta","- 2 tam buğday ekmeği içi","göz kararı lor peyniri"],
       description2: ["Yumurta hariç tüm malzemaleri","bir kaba koyun ıspanakları içine","doğrayıp elinizle şekil verin","1 tabaga yumurtayı 1 tabaga","toz tarhana koyun ve içinde","gezdirin sonra ister fırında ister","tavada pişirin."]  
     ),
      
    Ctarif(
      name2: "Etli Patates",
      image2: "assets/images/c7.jpg",
      ingredients2: ["- 500 gram et","- 4 patates","- 1 arpacık soğan","- ince kıyılmış pırasa","- kapya biber","- kekik,kimyon","- biber salçası","- zeytinyağı"],
      description2: ["Et tencerede suyunu çekene kadar","pişer.İçerisine soğan ve pırasa ","eklenip sotelenir.Patates, kapya biber","ve salça eklenip üzerine su eklenir","En son baharatlar eklenip kısık","ateşte pişirilir."],
      ),

    Ctarif(
      name2: "Dolma Biber",
      image2: "assets/images/c9.jpg",
      ingredients2: ["- 4 adet dolmalık biber","- 2 çorba kaşıgı kıyma","- 1 adet soğan","- 1 bardak pirinç","- 1 kaşık salça","- 2 dal maydanoz","- 1 diş sarımsak","- isteğe göre baharat","- 1 adet domates"],
      description2: ["Tüm malzemelri minik minik","doğrayıp azıcık zeytinyağında 5 dk","kavurun içi alınmış biberlere doldurun","tencereye yerleştirin üzerine biraz su","ilave edin ve pişirin"]
      ),
      
    Ctarif(
      name2: "Mücver",
      image2: "assets/images/c13.jpg",
      ingredients2: ["- yarım kabak","- yarım patetes","- yarım soğan","- 1 tutam maydanoz","- 1 yk kaşıgı yulaf unu","- 1 yumurta sarısı","- 1 yk zeytinyağı"],
      description2: ["Kabak patates ve soğanı ince rendeleyip","yulaf unu ekle karıştır.Ardından yumurta","sarısı yağ ve maydanoz ekleyip şekil","verin ve fırın tepsisine yerleştirin","170 derecede pişirebilirsiniz."],
      ),
    Ctarif(
       name2: "Ispanaklı Kek",
       image2: "assets/images/c14.jpg",
       ingredients2: ["- 3 adet yumurta","- 1 çay bardaği esmer şeker","- 300 gram ıspanak","- 1 çay bardağı zeytinyağı","- 200 ml light süt","- 1 paket kabartma tozu","- 2 bardak tam buğday unu"],
       description2: ["Şeker ve yumurta çırpılır,ıspanak ve","süt blenderize edilir içine eklenir.","zeytinyağı, un kb tozu katılır ve çırpılır.","Muffin kalıplarına dökülür, pişirilir."]  
     ),
     Ctarif(
      name2: "Havuçlu Köfte",
      image2: "assets/images/c15.jpg",
      ingredients2: ["- 500 gram kıyma","- 1 havuç","- 1soğan","- 1 yumurta","- 1 sb ekmek kırıntısı","- maydanoz","- yarım sb rendelenmiş kaşar",],
      description2: ["Havuç, soğan, mayadanozu rondodan","geçir.Kıymanın üzerine geri kalan","tüm malzemeleri ekle ve yoğur","şekil verdikten sonra fırına at","ve pişir,"],
      ),
    Ctarif(
       name2: "Demir Barı",
       image2: "assets/images/c16.jpg",
       ingredients2: ["- 10 adet hurma","- 2 ceviz","- 4 fındık","- 5 adet kuru kayısı","- 4 adet kuru üzüm","- 1yk keçiboynuzu unu","- 1yk dut pekmezi","- 1 yk yulaf ezmesi","- 2 yk su"],
       description2: ["Hurmalar sıcak suda bekletilir.","Diğer malzemeler robotta çekilir.","Hepsi karıştırılır şekil verilir","2-3 saat buzlukta bekletilir","kesilir ve dervis edilir"]  
     ),
    
     Ctarif(
       name2: "Sulu Köfte",
       image2: "assets/images/c18.jpg",
       ingredients2: ["- 200 garm kıyma","- 1 fincan pirinç","- 1 adet havuç","- 1 adet patates","- 1 adet domates","- yarım soğan","- 1 adet biber"],
       description2: ["Pirinçleri blenderdan geçirin,","kıymayla pirinci yoğurup minik","toplar yapın tencerede soğan ve","biberleri kavurduktan sonra domatesleri","ekleyin sıcak su ekledıkten sonra","küp küp patates ve havuçları ekleyin","köfteleride ilave et pişir ve hazırr."]  
     ),
     
     Ctarif(
       name2: "Enginarlı Bulgur Pilavı",
       image2: "assets/images/c20.jpg",
       ingredients2: ["- 1.5 bardak bulgur","- 2 bardak sıcak su","- 500 gr bebek enginar","- 1/2 demet dereotu","- 1/2 çb zeytinyağı"],
       description2: ["Havucu doğrayın dereotunu minikçe","doğrayın. Enginarları yıkayın ve 2 ye ","bölün zeytinyağda bulguru kavurun ","üzerine su ekleyin 10 dk sonra ","engnarları ve dereotunu,havucu ekleyin ","10 dk daha pişirin sonra 10 dk ","dinlendirin servis edin."]  
     ),
    
    

  ];
  int? _currentCtarifIndex;

  List<Ctarif> get ctarif => _ctarif;
  int? get currentCtarifIndex => _currentCtarifIndex;

  set currentCtarifIndex(int? newIndex) {
    
    //update current tarif index
    _currentCtarifIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
