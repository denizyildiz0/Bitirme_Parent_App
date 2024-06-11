import 'package:flutter/material.dart';


import 'tarif_list.dart';

class TarifProvider extends ChangeNotifier {
  final List<Tarif> _tariflist = [
    
    Tarif(
      name: "Havuç Püresi",
      image: "assets/images/b22.webp",
      ingredients: ["-1 adet havuç", "-1 tatlı kaşığı zeytinyağı"],
      description: ["Havuç haşlamaya bırakılır ve piştikten","sonra bir çatal yardımıyla ezilir ardından","içerisine zeytinyağı ilave edilerek ","karıştırılır ve servis edilir."],  
    ),
    Tarif(
      name: "Elma Püresi",
      image: "assets/images/b23.webp",
      ingredients: ["-1 adet elma"],
      description: ["Elma yıkanır ve soyulur ardından ","güzelce rendelenir, bebeğinize ara ","öğünde rahatlıkla tercih edebilirsiniz."]  
    ),
    Tarif(
      name: "Armutlu Mama",
      image: "assets/images/b21.jpg",
      ingredients: ["-1 adet armut", "-1 tatlu kaşığı irmik","-1 çay bardağı su","-1 çiçek brokoli","-2 küp peynir altı suyu"],
      description: ["Armut ve brokoliyi rendeleyelim.","Pişireceğimiz kaba alalım,","peynir altı suyu, su ve irmiği","ilave edip kısık ateşte pişirelim.","Soğutup servis edebilirsiniz"],
    ),
    Tarif(
      name: "Karışık Püre",
      image: "assets/images/b8.jpg",
      ingredients: ["-yarım patates", "-yarım havuç","-yarım kabak","-1 yemek kaşığı pirinç","-1 çay bardağı su","-zeytinyağı"],
      description: ["Pirinci yıkayıp suda pişiriyoruz.","Ayrı bir yerde sebzeleri buharda","pişiriyoruz, pişen sebzeleri blenderdan","geçiriyoruz ve pişen pirinç ve","sebzeleri birleştiriyoruz."]   
    ),
     Tarif(
       name: "Şeftali Yoğurt Püresi",
       image: "assets/images/b4.jpg",
       ingredients: ["-1 adet şeftali", "-1 kaşık yoğurt","-1 çay kaşığı toz badem"],
       description: ["Tüm malzemeyi karıştırıp püre haline","getirin."],
     ),
     Tarif(
       name: "Havuçlu Yoğurt Çorbası",
       image: "assets/images/b18.jpg",
       ingredients: ["-1 bardak yoğurt","-1 adet yumurta","-az limon suyu","-1/4 havuç","-1 tatlı kaşıgı bulgur","-nane","-maydonoz","-zeytinyağı"],
       description: ["Yoğurdu, bulguru, rendelenmiş havucu","biraz su ile tencereye alarak pişirin.","Yumurtayı limon suyu ile çırpın, ocaktaki"," çorbaya yine karıştırarak ama çok yavaş ","ekleyin. Bir taşım daha kaynatın. Ocaktan","indirmeden zeytinyağı koyun. Kıyılmış","nane ve maydonoz ile süsleyin."]     
     ),
     Tarif(
       name: "Tavuklu Çorba",
       image: "assets/images/b19.jpg",
       ingredients: ["-1 patates", "-1 kırmızı biber","-haşlanmış didiklenmiş tavuk eti","-tavuk suyu","-zeytinyağı"],
       description: ["Tüm malzemeleri bir tencereye koyun,","pişirin,blender'dan geçirin."]
     ),
     Tarif(
       name: "Peynirli Avakado",
       image: "assets/images/b10.jpg",
       ingredients: ["-1/2 adet avakado", "-1 tatlı kaşığı keçi peynir","-1 çay kaşığı limon"],
       description: ["Tüm malzemeyi karıştırıp püre haline","getirin."]
     ),
     Tarif(
       name: "Tarçınlı Muhallebi",
       image: "assets/images/b11.jpg",
       ingredients: ["-1/2 çay bardağı anne veya devam sütü","-1 su bardağı soğuk su","-1 yemek kaşığı yulaf unu","-1 yemek kaşığı pirinç unu","-bir tutam tarçın"],
       description: ["1 su bardağı suda pirinç ununu ve"," yulaf ununu alın ve muhallebi","kıvamına gelene kadar pişirin."," Soğuduktan sonra içerisine süt","ve tarçını ekleyip iyice karıştırın."]  
     ),
     Tarif(
       name: "Muz Püresi",
       image: "assets/images/b17.jpg",
       ingredients: ["-1 adet muz","-yarım tatlı kaşığı zeytinyağı"],
       description: ["muz ezilir ve ardından içerisine"," zeytinyağı eklenir."]
     ),
     Tarif(
       name: "Yumurtalı Biber",
       image: "assets/images/b16.jpg",
       ingredients: ["-3 adet Çarliston biber", "-1 adet pişmiş yumurta","-1 tatlı kaşığı peynir","-ince kıyılmış nane"],
       description: ["Biberleri buharda pişirin, tüm","malzemeyi karıştırıp püre ","haline getirin."]
     ),
     Tarif(
       name: "Avakado Mama",
       image: "assets/images/b20.jpg",
       ingredients: ["-1/2 avakado", "-1/2 muz","-1/2 havuç","-1 tatlı kaşığı tam pirinç unu","-1 tatlı kaşığı çekilmiş ceviz"],
       description: ["Tam pirinç ununu suyla pişirip","muhallebi kıvamına getirelim bir"," kenarda soğusun.Havucuda ayrı bir","tarafta haşlayalım. Muzu",",avakadoyu ve havucu ezelim içerisine",",cevizi ekleyip yaptığımız"," muhallebi ile birleştirelim."]  
     ),
     Tarif(
       name: "Hurmalı Elma Püre",
       image: "assets/images/b9.jpg",
       ingredients: ["-1 elma", "-2 adet kuru kayısı","-1 adet hurma"],
       description: ["Elmayı buharda pişirin. Diğer","meyveleri ılık suda bekletip","doğrayalım.Bütün malzemeyi karıştıtp","püre haline getirin."],    
     ),
    

  ];
  int? _currentTarifIndex;

  List<Tarif> get tariflist => _tariflist;
  int? get currentTarifIndex => _currentTarifIndex;

  set currentTarifIndex(int? newIndex) {
    
    //update current tarif index
    _currentTarifIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
