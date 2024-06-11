import 'package:bitirme_parent_app/etkinlikler/etkinlik_list.dart';
import 'package:flutter/material.dart';


class EtkinlikProvider extends ChangeNotifier {
  final List<Etkinlik> _etkinlikler = [
    Etkinlik(
      etkinlikImage: "assets/images/e1.jpg",
      etkinlikName: "Havuz Makarna Teknesi",
      etkinlikIngredients: "Kendin Yap Etkinliği",
      malzeme: [" - renkli eva"," - makas"," - bant"," - havuz makarnası"," - renkli pipetler"],
      imageDetay: ["assets/images/yelken1.jpg","assets/images/yelken2.jpg","assets/images/yelken3.jpg","assets/images/yelken4.jpg","assets/images/yelken5.jpg","assets/images/yelken6.jpg","assets/images/yelken7.jpg","assets/images/yelken8.jpg","assets/images/yelken9.jpg","assets/images/yelken10.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e2.jpg",
      etkinlikName: "Gölge Sanatı",
      etkinlikIngredients: "Görsel Algı Etkinliği",
      malzeme: [" - karton"," - falçata"," - yapıştırıcı"," - renkli selafon"],
      imageDetay: ["assets/images/golge1.jpg","assets/images/golge2.jpg","assets/images/golge3.jpg","assets/images/golge4.jpg","assets/images/golge5.jpg","assets/images/golge6.jpg","assets/images/golge7.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e15.jpg",
      etkinlikName: "Araba Yıkama",
      etkinlikIngredients: "Sanat Etkinliği",
      malzeme: [],
      imageDetay: ["assets/images/araba1.jpg","assets/images/araba2.jpg","assets/images/araba3.jpg","assets/images/araba4.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e3.jpg",
      etkinlikName: "Parmak Kukla",
      etkinlikIngredients: "Kendin Yap Etkinliği",
      malzeme: [" - renkli karton"," - makas"," - hayvan figürleri"],
      imageDetay: ["assets/images/parmak1.jpg","assets/images/parmak2.jpg","assets/images/parmak3.jpg","assets/images/parmak4.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e4.jpg",
      etkinlikName: "Gökkuşağı Sünger Boyama",
      etkinlikIngredients: "Sanat Etkinliği",
      malzeme: [" - sünger"," - boya"," - beyaz karton"],
      imageDetay: ["assets/images/gok1.jpg","assets/images/gok2.jpg","assets/images/gok3.jpg","assets/images/gok4.jpg","assets/images/gok5.jpg","assets/images/gok6.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e6.jpg",
      etkinlikName: "Kukla Tiyatrosu",
      etkinlikIngredients: "Drama Etkinliği",
      malzeme: [" - ayakkabı kutusu"," - renkli a3 kartlar"," - makas, kalem, cetvel"," - ahşap çubuklar"," - kesici, yapıştırıcı"," - yapışkan film fırçalar"," - boya kalemleri"," - kuklalar için şablonlar"],
      imageDetay: ["assets/images/ev1.jpg","assets/images/ev2.jpg","assets/images/ev4.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e8.jpg",
      etkinlikName: "Alfabeyi Bul",
      etkinlikIngredients: "Türkçe Etkinliği",
      malzeme: [" - kağıt"," - kalem"," - bant"],
      imageDetay: ["assets/images/alfabe1.jpg","assets/images/alfabe2.jpg","assets/images/alfabe3.jpg","assets/images/alfabe4.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e9.jpg",
      etkinlikName: "Kardan Adamı Doyuralım",
      etkinlikIngredients: "Sanat ve Oyun Etkinliği",
      malzeme: [" - kalın karton"," - beyaz kağıtlar"," - renkli el işi kağıtları"," - pamuk"," - düğmeler"," - yapıştırıcı"," - atık kağıtlar"],
      imageDetay: ["assets/images/kar1.jpg","assets/images/kar2.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e10.jpg",
      etkinlikName: "Alfabe Tüneli",
      etkinlikIngredients: "Türkçe Etkinliği",
      malzeme: [" - renkli kağıtlar "," - kalem"," - oyuncak araba"," - bant, makas"],
      imageDetay: ["assets/images/tunel1.jpg","assets/images/tunel2.jpg","assets/images/tunel3.jpg","assets/images/tunel4.jpg","assets/images/tunel5.jpg","assets/images/tunel6.jpg","assets/images/tunel7.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e11.jpg",
      etkinlikName: "Kutudan Akvaryum",
      etkinlikIngredients: "Oyun Aktivitesi",
      malzeme: [" - büyük bir adet karton kutu"," - renkli kağıtlar"," - deniz kabukları"," - taşlar"," - kinetik kum"," - açık yeşil boru temizleyici"," - oynar gözler"," - boya"," - fırça"," - falçata"," - yapıştırıcı"," - makas"],
      imageDetay: ["assets/images/akvaryum1.jpg","assets/images/akvaryum2.jpg","assets/images/akvaryum3.jpg","assets/images/akvaryum4.jpg","assets/images/akvaryum5.jpg","assets/images/akvaryum6.jpg","assets/images/akvaryum7.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    ),
    Etkinlik(
      etkinlikImage: "assets/images/e12.jpg",
      etkinlikName: "Salyangoz Çantası",
      etkinlikIngredients: "Duyusal Etkinlik",
      malzeme: [" - kilitli torba"," - saç jölesi"," - küçük ponponlar"," - boya malzemeleri"," - salyangoz şablonu"],
      imageDetay: ["assets/images/sal1.jpg","assets/images/sal2.jpg","assets/images/sal3.jpg","assets/images/sal4.jpg","assets/images/sal5.jpg","assets/images/sal6.jpg","assets/images/sal7.jpg","assets/images/sal8.jpg","assets/images/sal9.jpg",],
      buttonname: "Etkinliği gör",
      etkinlikIcon: Icons.interests,
    )
  ];

  int? _currentEtkinlikIndex;

  List<Etkinlik> get etkinlikler => _etkinlikler;
  int? get currentEtkinlikIndex => _currentEtkinlikIndex;

  set currentEtkinlikIndex(int? newIndex) {
    _currentEtkinlikIndex = newIndex;
    notifyListeners();
  }
}
