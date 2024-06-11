import 'package:bitirme_parent_app/blog/blog_list.dart';
import 'package:flutter/material.dart';



class BlogProvider extends ChangeNotifier {
  final List<Blog> _bloglist = [
    Blog(
      title: "Hırçınlık ve Huysuzluk",
      image: "assets/images/blog1.jpg",
      description: ["'Çocuğum hiç söz dinlemiyor. Kendi bildiğini okuyor, dediğim dedik davranıyor 2 yaş dönemi çocuğun bağımsız olduğunu",
      "fark etmeye başladığı,merakının arttığı bir","dönemdir.Çocuk gelişiminin en önemli ","evresidir.2 yaş döneminde çocuk sıklıkla","öfke nöbeti yaşayabilir, inatçılık, hırçınlığı",
      "tetiklenebilir.Çocuk,yürümeye,keşfetmeye","başlar.Hareket halindeki çocuk kurallar ve","yasaklarla karşı karşıya kalır.Çocuk yasağa","ya aşırı uyum sağlar yada bağımsızlığını",
      "ortaya koymak için direnebilir.Anne ve","babanın çocuğun kendi duygu,düşünce ve","istekleri olduğunu unutmadan kurallar ve","sınır koyması önemlidir.18.aydan itibaren,",
      "işlerin hep kendi istediği gibi ilerlemesini","ister,istediği olmadığında ise öfkelenir.","Kendisini odak noktası olarak görür.","Akranlarıyla sürekli çatışma yaşayabilir.",
      "Onlara zarar vermeye(vurmak,itmek vb.)","çalışabilir.Çocuk anne babasının her","dediğine “hayır” diyerek aslında kendi","bağımsızlığımı ve gücünü sınamaya","çalışmaktadır.Bu dönemde bir yandan",
      "çocuk bağımsızlığı için cesaretlendirmeye"," bir yandan da disiplin ve yönlendirilmeye","ihtiyaç duymaktadır.Sınırların ve","kuralların belirlenmesi,bunları uygulamada",
      "kararlı ve tutarlı olunması önemlidir.Bazı","aileler çocuğun her istediğini yapılması","gerektiğini, yapmazsa çocuğun sevgisini","kaybedeceğini düşünür. Halbuki, bu ","yaklaşım çocuğa zarar verir.",
      "","AİLELERE ÖNERİLİLENLER","Anne ve babanın sınırların, kuralların","belirlenmesinde kararlı ve tutarlı davranmı","huysuzluk, hırçınlık yaptığında ilgi","göstermek yerine,çocuk bağımsızlığını",
      "sınamak adına kendi başına bir şeyler","yapmak isteyebilir.Kendi başına yapmak","istedikleri konusunu desteklemek.Hırçınlık","ağlayıp kendini yerden yere attığında,",
      "etraf ne diyecek diye düşünüp geri adım","atmamak,kararlı durmak yaptığında,","kendisini sözlerle ifade etmesini sağlama","Bu konuda çocuğa model olmak.“Hayır,","olmaz” gibi cümleleri kullanmaktan",
      "kaçınmak “Sakın,oyuncaklarını yere atma,","hayır” demek yerine “aferin, oyuncaklarına","zarar vermeyeceğini biliyorum” önemlidir."]
    ),
    Blog(
      title: "Üstün Zeka",
      image: "assets/images/blog2.jpg",
      description: ["Üstün Zekalıların Belirtileri:","","Genellikle erken yaşta kendiliğinden ","okumayı öğrenir.2,5-3 yaşlarında.Çok soru","sorar, adeta sorularla çevresindekileri","bıktırır.Yetişkinlerle vakit geçirmeyi sever.",
      "Motor becerileri sever dağınıktır ama","bu dağınıklık içerisinde bir düzeni vardır.","Genellikle az uyur.Kontrolü elinde","tutmaya çalışır.Tat duyusu erken yaşta","gelişmiştir.Yeme problemi olur,genellikle"," yiyecek seçer.Yaşıtlarına göre sosyal",
      "olaylara karşı daha duyarlıdır.Meraklıdır.","Adalet,eşitlik gibi konularda hassasiyet","gösterir ve haksızlığı asla kabul etmez.","Sebatkardır, tuttuğunu koparana kadar","devam eder.Kolaylıkla uç noktalara","kayabilir uçlarda yaşayabilir.Mizah",
      "yetenekleri vardır.Avukat gibi kendi","görüşünü savunur.İlgi alanı çeşitli ve","yoğundur.Öğrendiklerini sentezleyip yeni","şeyler üretme çabasındadır.","Mükemmeliyetçi bir yapıya sahip","olduklarından bazen risk almak","istemezler.Yalnız başarılı oldukları",
      "alanlara yönelebilirler.Bu durum","çocukların güçlü ve güçsüz yönlerini","keşfetmelerini engelleyebileceği gibi","zayıf olduğu alanlarda özgüven","eksikliğine sebep olabilmektedir.",]
    ),
    Blog(
      title: "Yalan Söyleme",
      image: "assets/images/blog3.jpg",
      description: ["Yalan, bir hatayı gizlemek amacıyla bir","girişimde bulunmaktır.Bu girişim sözle","olabileceği gibi jest, yazı ve susmayla da","olabilir.İnsanlar yalancı doğmazlar ama","yalan söylemenin öğrenildiği bir gelişim",
      "süreci yaşarlar.5 yaşına kadar çocukların","söylemiş olduğu yalandan endişe etmeye","gerek yoktur.Gerçeğe sadık kalma","çocukta zamanla gelişen bir olgudur.","Çocuğa yalan söylememesi konusunda","nutuk çekmek veya yalan söylediğini","ispat girişiminde bulunmak yanlıştır.",
      "Çocuk açıkça yalan söylediği zaman,","endişeyle karşılanmamalıdır.Çocuğun","yalan söylenmesiyle etkili mücadele için","öncelikle yalanın ne tür olduğu bilinmeli,","yalandan çok buna neden olan psikolojik","faktörler ele alınmalıdır.Küçük çocukların",
      "söylediği yalanlar,gerçek yalandan","farklıdır, gerçek yalanla yüzeysel","benzerliği karıştırılmasına neden olur.","Bunun ayrımını yapmadan önce, çocuğa ","yalancı damgası vurmak yanlış olur.","","YALANIN PSİKOLOJİK NEDENLERİ:","Çocuğun sevgi ve ilgi ihtiyacının anne",
      "-baba tarafından yeterince","karşılanamaması,Çevresindeki insanların","kötü örnek olması,Çocuklar arasında","kıyaslanma yapılması,Çocuğa gücünün"," üzerinde sorumluluk verilmesi,Çocuğun","yaptığı hatalar sonucu sert cezalar","verilmesi.",""," YALANIN ÖNLENMESİ","",
      "Çocuğa güvenmek, onu her hatasında","cezalandırmamak, karşılıklı güven","hislerini geliştirmek suretiyle yalanlardan","korunmak mümkündür.Yalanın","önlenmesinde titizlikle uyulması gereken"," kurallar şu şekildedir Anne-baba,","öğretmen yalan söylemekten kaçınmalıdır.",
      "Çocukların istenmeyen davranışlarına","mümkün olduğu kadar yumuşak ve"," hoşgörülü davranılmalıdır.Çocuklardan","yapamayacakları şeyler istenmemelidir.","Özellikle küçük çocuklar yalan söyledikleri","zaman cezalandırılmamalıdır.Çocuklar,","başka çocuklar ile kıyaslanmamalıdır.",
      "Sık sık çocuklarla sohbet ederek ilgi ve","beklentileri öğrenilmeli ve dikkate","alınmalıdır.",]  
    ),
    Blog(
      title: "İnatçılık",
      image: "assets/images/blog4.jpg",
      description: ["Çocuk ergenliği de denilen İnat dönemi,","2-4 yaş arasında görülen çocuğun sıklıkla","ısrar ettiği, zaman zaman bir şeyi"," yaptırmak için ağlama nöbetleri","yaşayabildiği, kurallara uymada zorlandığı,"," her soruya neden veya hayır cevaplarını","verdiği kısaca ebeveynlerinden ayrışarak",
      "kimlik savaşı verdiği bir dönemdir. 18.","aya kadar anne babasının söylediklerini","kabul eden çocuk, kendisinin bir birey","olduğunun farkına varır, kendini kanıtlama","çabası içerisine girer.Bu dönemde","çocuklar bir yandan anne babadan ","ayrılmakla ilgili kaygı yaşarken bir",
      "yandan da yeni şeyler keşfetme ve arayış ","içerisine girmektedirler.Birçok şeyi kendi","başına yapabileceğini anlayan çocuk kendi","becerilerini denemek, çevresini keşfetmek","için anne ve babasına karşı çıkmaya","başlarken, bir taraftan da onların"," güvenine ihtiyaç duyar.",
      "","ANNE BABALARA ÖNERİLER","","İnat döneminin çocuğun gelişimi,","bireyselleşmesi için önemli olduğunun","aile tarafından bilinmesi önemlidir.","Bu dönemdeki en önemli şey anne","babanın sakin kalabilmesidir.","Anne babasının sakin kalabildiğini gören","çocuk kendisini güvende hissedebilir.",
      "Anne babanın öfkeli davranışlar","göstermesi durumunda ise çocuk bunu","model alarak öfkeli davranışlar gösterir.","Çocuğun kendi başına yapmak istedikleri","(yemek yemek, kendi kıyafetini kendi","başına seçmek vb.) konusunda","desteklenmesi, çocuğun ileriki yaşamında ",
      "kendisine güvenen bir birey olmasına","yardımcı olacaktır.Bu dönemde anne","babanın çocuğun yapmasını istediklerini","pozitif cümlelerle ifade etmesi,","“Hayır” kullanmaması önemlidir.","Yasaklar koymak yerine çocuk kurallara","uyduğunda onu ödüllendirmek çocuğun","o davranışının pekişmesine yardımcı",
      "olacaktır.Çocuğa alternatifler sunmak,","bu alternatifler üzerinden seçim","yapmasını sağlamak, uzlaşmacı bir tavır","sergilemek, çocuk öfkelendiğinde onun","dikkatini başka bir alana yönlendirmek,","ilgisini çekecek seçenekler oluşturmak","önemlidir.","Anne baba çocuğun istediğini neden",
      "yapmadığını, yapmamasının kendisinde","yaratmış olduğu duyguyu ifade etmesi,","çocuğun anne babasını sürekli engeller","koyan kişiler olarak algılamasının önüne","geçecektir. Aile içinde herkesin uyduğu","kurallar konusunda anne babanın ortak","bir dil kullanması önemlidir.",
      "Çocuğun inat döneminde edindiği","tecrübeler anne babanın tepkileri sosyal","gelişimi açısından önemlidir.Çocuk bu","dönemde sınırları öğrenemezse ileride","kuralları kabul etmekte zorlanabilir.","Anne babanın çocuğun istedikleri","karşısındaki tutarsız davranışları, çocuğun",
      "ilerleyen dönemlerde davranış bozukluğu","göstermesine neden olabilir. Eğer inat","davranışı her türlü olumlu yaklaşıma","rağmen düzelmiyorsa çocukta ruhsal bir","duruma işaret ediyor olabilir.Ruhsal","travmalar, depresyon, kaygı bozukluğu ","gibi durumlar çocuklarda inatçı",
      "davranışlara sebep olabilir. Bu durumda","mutlaka biruzmana danışmak gerekir."]
    ),
    Blog(
      title: "Mükemmelliyetçilik",
      image: "assets/images/blog5.jpg",
      description: ["Mükemmeliyetçi yapıya sahip çocuklar,","toplum içinde takdir gören ve “sorumluluk","bilinci yüksek” çocuklar olarak bilinirler.","Mükemmeliyetçilik sıklıkla en iyiyi","yapmak için azimle uğraşmakla karıştırılan","bir kavramdır. Oysaki mükemmeliyetçilik","dışarıdan göründüğü kadar iyi bir özellik",
      "olmayabilir. Elinden gelenin en iyisini","yapmaya gayret eden çocuklar süreç","içinde kaygılarını kontrol altında","tutabilirken mükemmeliyetçi çocuklar","sadece en iyiye odaklandıklarından ","hem yaptıkları uğraştan aldıkları keyif ","düşük olur hem de üst düzeybir ",
      "kaygıya sahip olurlar. Mükemmeliyetçilik","beraberinde kontrol etme çabasını da","getirdiğinden bir süre sonra çocukların","duygusal olarak da yıpranmasına neden","olabilir.Mükemmeliyetçi çocuklar","koydukları aşırı yüksek hedeflere","ulaşamadıklarında kendilerini sanki hiçbir","şey başaramamış bir işe yaramaz gibi",
      "acımasızca eleştirebilir duruma bağlı","olarak küçük çaplı öfke nöbetleri","geçirebilirler.Mükemmeliyetçiliğin en","belirgin belirtileri ise şunlardır: En ufak","bir başarısızlık yaşadığında aşırı","tepki verme Ödevlere başlamakta ve","bitirmekte zorlanma Çok yüksek","kaygı derecesine sahip olma Yeni şeyler",
      "denemeye yanaşmama Etrafındaki ","kişilerden de aynı şekilde mükemmel","hareket etmesini bekleme Kendinden","bahsederken olumlu özellikleri göz ardı","edip sürekli olumsuz özelliklere","odaklanma kontrol etme konusunda","takıntılı olma Mükemmeliyetçiliği","oluşturan sebepler genellikle üç başlık",
      "etrafında toplanır. Bunlardan ilki","sosyal beklentidir.Çocuklar küçüklüğünde","yetişkinlerin onu takdir etmesinin ve","onaylamasının salt başarıya bağlı","olduğunu gördüyse mükemmel olmayı ","eleştirilerden  kaçınma ve kabullenme"," aracı olarak kodlayabilir.","İkinci başlık ise sosyal öğrenmedir.",
      " Çocuklar ebeveynlerinin ufak bir hata","veya başarısızlık karşısında büyük tepkiler","verdiğini görerek büyüyorsa bunu","içselleştirebilirler. Ebeveynleri","mükemmeliyetçi olan çocuklar","mükemmeliyetçi olmaya meyilli olarak"," karşımıza çıkmaktadır."," Üçüncü başlık ise sosyal tepkidir.",
      " Büyüdükleri ortamda yaşamamaları","gereken fiziksel/psikolojik şiddet,","istismar, ebeveynlerin birbirleriyle","sürekli kavga ettiğine tanık olma gibi","deneyimler, üzerinde kurulamayan","denetleme duygusunun kendi hayatı"," üzerinde mükemmeliyetçi yapıya sahip","olma ile ortaya çıkmasıdır.",]
    ),
    Blog(
      title: "Ödev",
      image: "assets/images/blog6.jpg",
      description: ["Ödev, yerine getirilmesi gereken bir","görevdir. Bu görev, başkası tarafından","verilebileceği gibi kişinin kendi","kendine sorumluluk yüklemesi ve yerine","getirme gerekliliği hissetmesi sonucu da","edinilebilir.Ev ödevi(okul ödevi)","ise öğrenmeyi desteklemek için",
      "öğrencinin okul saatleri dışında,evinde","yapması gereken görevlerini ifade eder.","","Ödevi Sevdirmek İçin:","","aşırı zaman alıcı veya zor ödevler","verilmemeli öğretmenler, çocukların okul","dışındaki zamanını neredeyse komple"," işgal edecek düzeyde ağır ödevler","vermemelidir. Bununla birlikte, kısa",
      "sürede bitebilecek olmasına rağmen","aşırı zor ödevler de verilmemelidir.","Bu tür ödevler karşısında çocuklar","psikolojik olarak aşırı yorulmakta","ve yılgınlık hissetmektedirler.","Öyleyse, gereğinden fazla/zor ödevler","verilmemesi gerektiği konusunda","netleştiğimizi varsayıyorum ve bir","sonraki maddeye geçiyorum.",
      "Mükemmeliyetçi Olmayın, Çocuğu"," Yıldırmayın Çocuğunuzun yaptığı ödev ","gözünüze hoş görünmüyor olabilir ama ","neticede o ödev yapılmış ve bitmiştir.","“Hayır bu olmamış, yeniden yap”","dediğiniz anda çocuk, bütün emeklerinin","boşa gittiğini düşünüp üzülecektir.","Bu durum sık sık tekrar ederse bu defa",
      "çocuk “ne de olsa yaptığım ödev","beğenilmeyecek. Uğraşmama gerek yok”"," diyerek başarısızlığı peşin peşin","kabullenebilir. Bu yüzden,ödevde hatalar","varsa düzeltmesi için yardımcı olun","ama komple ödevi yeniden yapmasını","istemeyin.Çocuk, Okuldan Gelir","Gelmez Ödev Yapmaya Zorlanmamalıdır.",]  
    ),
    Blog(
      title: "Boşanma",
      image: "assets/images/blog7.jpg",
      description: ["Boşanma kararını netleştirdikten, kesin","karar verildikten sonra açıklamayı anne-","babalar beraber yapmalıdır.Açıklama","sırasında ebeveynlerin duygu durumu","önemlidir. Aşırı üzüntü, öfke ve kaygı","belirtileri, çocuk için çok zorlayıcı ve","ve travmatik olabilir. Çok ayrıntıya","girmeden, çiftler birbirini olmadan emeden",
      "anlaşamadıklarını, beraber mutlu","olamadıklarını söylemelidir.","Bu ayrılığın sadece eş olmakla ilgili olduğu","yine onun anne babası olmaya devam","edecekleri vurgulanmalıdır.‘Biz boşanacağız","ama ikimizde senin annen baban olmaya","devam edeceğiz,seni çok seviyoruz ve bu","durum bunu asla değiştirmeyecek’",
      "denilebilir.Çocuğa söylenmeden önce","nasıl bir düzen kurulacağı kararlaştırılmalı","ve çocuğa yeni düzenle ilgili bilgi","verilmeli. Nerede yaşayacak, diğer ebeveyni","ne kadar sıklıkla görecek gibi. Ancak bu","yeni düzenle ilgili olarak bazı konularda"," çocuğun da fikrini almak kendisini daha",
      "iyi hissetmesini sağlayacaktır.","Çocuğun duygularına alan sağlanmalı","bunun onu üzebileceği, kaygılandırabileceği","bu duyguların normal olduğu anlatılmalı,","duygularını ifade etmesine olanak sağlamalıdır.","Dikkatli ve doğru davranmanıza rağmen,","çocuklar ayrılık sürecinin zorluklarıyla baş","etmekte zorlanabilirler ve bir takım psikolojik",
      "problemler yaşayabilirler.Yemek ve","uyku sorunları, okula gitmek istememe","içe kapanma Daha önce zevk aldığı"," aktiviteleri yapmak istememe","Ağlama ve öfke nöbetleri","Davranış problemleri (alt ıslatma,","tırnak yeme gibi) ","Üzüntü ve kaygı halinin yoğunlaşması","Ebeveynlerden biriyle arasına mesafe koyma","görüşmek istememe gibi davranışlar ortaya",
      "çıktığında vakit kaybetmeden uzman desteği","almanız yararlı olacaktır. Psikoterapi desteği,","çocuğunuzun yaşadığı sorunları atlatmasına ","ve travmatik olayın etkisinden çıkarak","yetişkin hayatında daha sağlıklı ilişkiler","kurmasına yardımcı olacaktır.",],  
    ),
    Blog(
      title: "Sıkılma",
      image: "assets/images/blog8.jpg",
      description: ["Çocuklar neden artık daha çabuk sıkılıyor","ve sabırsız davranıyor?","","1.ÇOCUKLAR İSTEDİKLERİ HER ŞEYİ","İSTEDİKLERİ ANDA ELDE EDİYOR","2.SINIRLI SOSYAL ETKİLEŞİM","3.SONSUZ EĞLENCE","4.ÇOCUKLAR & TEKNOLOJİ","5.ÇOCUKLAR DÜNYAYI YÖNETİYOR:","“Oğlum sebzeleri sevmez.”","“Kızım erken yatmayı sevmiyor.”",
      "“Oğlum kahvaltı etmeyi sevmiyor.”","“Oyuncakları sevmiyor ama iPad’iyle iyi"," oynuyor.”","“Kendi kendine giyinmek istemiyor.”","“Kendi kendine yiyemeyecek kadar tembel.”",
      "Onlara İSTEDİKLERİ ama onlar için İYİ","OLMAYAN şeyleri vererek onlara ne ","iyilik yapıyoruz ki acaba? Doğru","beslenmezler ve geceleri düzgün uyumazlarsa,","çocuklarımız okula huysuz, sinirli ve","ilgisiz bir şekilde giderler. Üstelik","böyle yaparak onlara yanlış mesajlar","da veriyoruz. Ne isterlerse yapabileceklerini",
      "ve istemedikleri şeyleri yapmalarına","gerek olmadığını öğreniyorlar.","“Yapılması gereken şeyler” kavramı"," yok oldu gitti. Maalesef hayattaki","hedeflerimizi yerine getirmek için","yapılması gereken şeyleri yapmak zorundayız.","Bunlar arasında bazen yapmak istediğimiz",
      "şeyler yer almayabilir de. Örneğin bir","çocuk derslerinden pekiyi almak istiyorsa","sıkı çalışması gerekir. İyi bir","futbolcu olmak istiyorsa her gün antreman","yapması gerekir.","","ÇOCUĞUNUZUN BEYNİNİ EĞİTİN","1.SINIR KOYMAKTAN ÇEKİNMEYİN","2.TEKNOLOJİYİ SINIRLANDIRIN",
      "3.HAZZI ERTELEME EĞİTİMİ VERİN","4.ÇOCUĞUNUZA ERKEN YAŞTAN İTİBAREN ","MONOTON İŞLERİ YAPMAYI ÖĞRETİN,","ZİRA BU GELECEKTE “GELİŞTİRİLEBİLİR","” OLMASININ TEMELİDİR","5. SOSYAL BECERİLERİ ÖĞRETİN",],  
    ),
    Blog(
      title: "Sınır Koyma",
      image: "assets/images/blog9.jpg",
      description: ["Çocuklara Sınır Koymak Nedir?","","Tıpkı ülkeleri fiziksel olarak ayıran","sınırlar gibi insan ilişkilerinde de","soyut ve somut sınırlar mevcuttur.","Sınırlar, arkadaşlarınız ve aileniz ile","ilişkilerinizi düzenlemenize ve kendinizi","korumanıza yardımcı olur. Bir ebeveyn",
      "olarak çocuğunuza koyduğunuz sınırları,","onun güvenliği ve gelişimi için neleri","yapıp neleri yapamayacağını ona öğreten","çizgiler olarak düşünebilirsiniz1.","","Çocuklara Sınır Koymak Neden Önemlidir?","","Empati","Güven","Benlik Algısı","Güç Dengesi","Öz Disiplin","Başa Çıkma Becerilerini geliştirir.",
      "","Çocukların Sınırları Aştığının Göstergeleri","","Kapı çalmamak","Söz kesmek","Mahremiyete saygı göstermemek","Kendi başlarına yapabilecekleri şeyleri","başkalarından istemek","İstediklerini elde etmek için inatçı","davranışlar sergilemek","Ebeveynlerin özel hayatına müdahil olmak","İstediği olmadığında öfke nöbeti geçirmek",
      "","Çocuklara Sağlıklı Sınırlar Çizmenin Yolları","","Sınırlar Hakkında Net Olun","Sınır Koyarken Tutarlı Olun","Çocuğunuza Değil Kendinize Odaklanın","Mükemmeliyetçi Beklentiler İçinde Olmayın","Etkili İletişim Kurun","Empati Kurmaya Yönelik Çalışmalar Yapın","Ödül - Ceza Sistemini Kullanın","Sınırların Karşılıklı Olduğunu Vurgulayın","Çocuklarınıza Model Olun",],  
    ),
    Blog(
      title: "Gıdıklanma",
      image: "assets/images/blog10.jpg",
      description: ["Gıdıklanan kişi bu eylem esnasında kendi","kontrolünü kaybediyor. Kontrol kazanma","mücadelesi çocuk için küçük düşürücü olabilir","ve ömür boyu hoş olmayan anılar bırakabilir.","Yetişkinler çocukları gıdıklarsa, çoğunlukla","eğlenmek isterler, ancak bu sonuçların","zararlı olmayacağı anlamına gelmez.",
      "Kentucky Üniversitesi’nden Dr.VernonR.Wiehe","'in aktardığına göre, çocuklukta kardeşleri","tarafından istismara uğrayan 150 yetişkin","gıdıklamayı fiziksel istismar olarak","gördü. Çalışma, gıdıklamanın, mağdurda","nefes alamaması nedeniyle kusma ve bilinç","kaybı gibi aşırı fizyolojik reaksiyonlara","neden olabileceği sonucuna vardı.",
      "ÇOCUK SİZE DURMANIZI SÖYLEYEMEYEBİLİR","Gıdıklama, durması zor olan kontrol","edilemeyen kahkahalara neden olabilir.","Sürekli gıdıklamanın neden olduğu kahkaha","gıdıklanan kişinin artık düzgün bir","şekilde nefes alamayacağı ve zor bir","durumda olduğunu söyleyemedikleri bir","noktaya ulaşabilir. “Eğlenceli” olarak",
      " başlayan bir şey ciddi tıbbi komplikasyonlara","neden olabilir. Michigan Üniversitesi","Evrimsel Biyoloji Profesörü Dr.Richard","Alexander’a göre , gıdıklama çok iyi bir","baskınlık olabilir ve bunu izleyen gülme,","boyun eğiciliği göstermenin evrimsel bir ","yoludur","","ÖMÜR BOYU GÜVEN SORUNLARINA NEDEN OLABLİR","Alexander'a göre, birinin iradesini",
      "gıdıklamak aslında “büyük zihinsel acıya”","neden olabilir. Dr. Richard Alexander’a","göre birini iradesi dışında gıdıklamak","aslında 'büyük zihinsel acıya' neden olabilir.","Bazen bu acı bir ömür boyu güven sorununa","neden olabilir.",],  
    ),
    Blog(
      title: "Tırnak Yeme",
      image: "assets/images/blog11.jpg",
      description: ["Bu davranışın altında yatan sebepler parmak","emmede olduğu gibi çoğunlukla psikolojik","sorunlardır.Alışkanlık daha çok baskı"," altına alınmış heyecanların ilgilendiği","durumlarla olup, çocuk bunun arzu","edilmeyen bir davranış ve alışkanlık olduğunu","anlayınca kökleşmekte olduğu görülmektedir.",
      "Tırnak yeme bir güvensizlik belirtisi","olarak kabul edilir. Aile içinde aşırı","baskılı ve otoriter bir eğitimin uygulanması,","çocuğun sürekli azarlanarak eleştirilmesi,","kıskançlık, yeterli ilgi ve sevgi görememe","sıkıntı ve gerginlik başlıca nedenlerdir.","Anne babanın yaşantısı da önemli bir etkendir.",
      "Anne baba arasındaki iletişim sorunları,","anne babanın aşırı kaygılı olması ve","çocuğu aşırı derecede koruyup kollaması,","anne babanın çocuklar arasında ayrım yapması","çocukların birbirleriyle olan ilişkilerinde","ve çocuklarda duygusal sorunlara neden","olabilmektedir Tırnak yeme taklit yoluyla da",
      "başlayan bir davranıştır. Ailede ya da yakın","çevrede erhangi bir bireyin tırnak yeme","davranışı göstermesi doğal olarak çocuğun","ilgisini çekecektir. Ayrıca tırnak yeme","davranışı olaylara bağlı olarak gelişebilmektedir.","Çocuğu tedirgin eden herhangi bir olay","veya çevrede onun için hoşnutsuzluk",
      "yaratacak herhangi bir durum bu davranışı","göstermesine yol açar.Aile içinde çocuğa","karşı aşırı baskıcı ve otoriter bir tutum","sergilenmesi, çocuğun sürekli olarak","azarlanması, eleştirilmesi, yetersiz ilgi","ve sevgi, sıkıntılar ve gerginlikler tırnak","yeme davranışına neden olan başlıca etkenler",
      "arasında sayılabilir Tırnak yeme davranışı,","parmak emmede olduğu gibi, duygusal","sorunlardan kaynaklanmaktadır ve söz konusu","gerilimleri azaltmaya yöneliktir.","","Ailelere Öneriler","","3-4 yaşlarına kadar bu davranışın anne","baba tarafından görmezlikten gelinmesi","gerekmektedir. Daha sonra bu davranış",
      "devam ederse;","Çocuğun gerginlik ve hoşnutsuzluk","nedenleri iyice araştırılmalıdır.","Çocuğu azarlamak,korkutmak,ceza","vermek gibi zorlayıcı yöntemlerin","uygulanması oldukça yaralayıcı olmaktadır.","Hatta çok daha ağır duygusal problemlerin","çıkmasına neden olabilir.","Çocukları korku ve kaygı yaratacak",
      "durumlardan uzak tutmak gerekir.","Çocukların ilgisi başka yöne çekilebilir.","Bir şey izlerken ya da dinlerken onun","çiğneyecek bir şeyle meşgul etmek,","tırnak yemenin yerine gelecek bir etkinlik olabilir.","Çocuk bu davranıştan vazgeçmesi için","zorlanmamalıdır. Zorlama, davranışı şiddetlendirebilir."],  
    ),
    Blog(
      title: "Rekabet",
      image: "assets/images/blog12.jpg",
      description: ["Dünyaya gelişimiz bile en küçük hücrelerimizin","rekabeti ve anne rahmine düşen embriyonun","kazandığı bir yarışla başlıyor. Yani","hayatta kalmak için savaşmak doğamızda"," var! Bazı yazılı ve sözlü sosyal kurallar","çerçevesinde rekabetin sınırları küçük","yaşlardan itibaren çiziliyor.",
      "Henüz okul öncesi çağında çocuk, bir","‘yarış’ kültürüyle tanışır ve yarış","kazanmak önemlidir. Bu dönemde,","“Benim arabam en hızlı, en yükseğe ben","atlarım, babamın boyu şu kadar uzun”","gibi somut kavramlar üzerinden kıyaslamalara","girilir. Çocuk kendini bunlarla tanımlar","ve bu son derece doğaldır.",
      "İşte büyüdükçe edinmesi gereken,","psikolojik açıdan sağlıklı ve dengeli","bir bakış açısı için ona ileteceğiniz","","5 önemli mesaj:","-Sıralamayı değil çabayı takdir etmek.","Onun 1., 2., 3. gibi bir derecede olmasından","ziyade, içinde bulunduğu mücadeleyi ve","gösterdiği azmi önemsediğinizi belli edin.",
      "-Rekabet ettiği kişilerle empati yapabilmek"," Herhangi bir rekabet/yarış esnasında","veya sonrasında diğer insanların duygularının","da farkında olmanın önemini vurgulayın.","Örneğin, kaybedenle dalga geçmemek,","duygularını kontrol altında tutabilmek","gibi...","Kendimizle yarışmak. Yarışların en büyüğünün",
      "kendimizle mücadele olduğu mesajını verin.","Onu başkalarıyla kıyaslamak yerine,","“Dünkü … rekorunu kırabilir misin?”","gibi sözlerle yaklaşın. Bu, özgüven","gelişimi için büyük bir artı olacak.","Yenilmek kazanmaktır. Bir mücadeleyi","kaybetmenin aslında tecrübe kazanmak","olduğunu işleyin. Üzgün olmasının doğal",
      "olduğunu söyleyerek, geleceğe dair hedefleri,","geliştirebileceği tarafları üzerine konuşabilirsiniz.","Bireysel hırslar yerine, ekip olabilmek.","Sadece kendi ekseninde, kendini gördüğü","bir mücadele yerine, bir takım olabilmenin","ve o takımın içinde verimli olabilmenin","değerini anlatın. Kazanmayı istemek ve",
      "kazanmaya ihtiyaç duymak arasındaki çizgi","önemli. Çocuğunuz, kazanamadığında sanki bir","parçasını da kaybetmiş gibi hissediyorsa,","bu onun için ciddi bir yıkım oluyorsa,","durumu daha derinlemesine anlamak ve","ihtiyacı olan desteği ona sağlamak gerekir.",],  
    ),
    Blog(
      title: "Küfür Etme",
      image: "assets/images/blog13.jpg",
      description: ["ÇOCUKLARDA KÜFÜRÜN NEDENLERİ NELERDİR?","","Her çocuk zaman zaman stres yaşar.Çocuğun","dünyasında büyüttüğü durum stres yaşamasına","neden olmaktadır.Bu stres çocukta; küfür,","saldırganlık, iştahsızlık, inatçılık,","vurma vb. davranışlarla kendini gösterir.","Böylesi zamanlarda çocuğun sakinleşmesi",
      "sağlanarak konuşmasına imkan sağlanmalıdır.","Yaşadığı bu stres ebeveyn desteği ve","ilgisiyle çözüme kavuşturulmalıdır.","Kimi çocukların sıklıkla küfür ettiğine","şahit oluruz. Hayatı taklit ve model"," alma ile öğrenen çocuk küfür ediyorsa","nedenler irdelenmeli ve önlem alınmalıdır.","Çocukta küfür etme nedenlerine bakacak",
      "olursak; Çocuğun ebeveyni veya etrafındaki","yetişkinlerin küfür içeren söylemlerini","taklit etmesi İlgi çekme isteği","Baskıcı-otoriter ebeveyne karşı duyduğu","öfke veya intikam alma duygusu","Ebeveyn çocuk iletişim eksikliği","Yetersizlik hissi","Çocuğa sürekli sınır koyma","Akademik başarısızlık","Aile kuralların katı oluşu",
      "Çocuğun duyusal, fiziksel istismara","maruz kalması Çocuğa üstesinden gelemeyeceği","sorumlulukların verilmesi Kızgınlık","ve öfke durumlarında ağızdan kaçırıverme","yaşaması (bu aile içinde küfürlü konuşan","ebeveyn varlığından ya da aşırı engellenmeden","kaynaklanan gerginlik anında görülür)","Küfür eden akranları arasında kabul",
      "görme isteği Küfürlü konuşmalar ile","büyüdüğünü ispat etme çabaları","Savunma ihtiyacı hissetme ya da bağımsızlığını","kabul ettirme çabaları ","","KÜFÜRLÜ KONUŞMAYI ÖNLEMEK İÇİN EBEVEYNLERİN","YAPMASI GEREKENLER","","Çocuğa olumlu model olunmalı","Eğer ebeveyn küfür ederse çocuğunda","küfür etmeme ihtimalinin olmadığı",
      "unutulmamalı Çocuğun ebeveyne varsa","kızgınlığı ya da kırıldığı durum ifade","edebilmesine imkân tanınmalıdır. Duygularını"," ifade edebilmesi onun öfkeli anında","küfürlü kelimelerin limanına sığınmasının"," önüne geçecektir.Çocuk küfürlü kelime","kullandığında kesinlikle şiddet veya","tehdit kullanılmamalı, ani ve abartılı",
      "tepkilerden uzak durulmalı, çocuğun dikkati","başka yöne çekilmelidir.","Çocuk küfür ettiğinde sert üslup ile yaklaşıp","çocuğu korkutmak; çocukta o davranışın","yok olmasına değil, bastırmasına neden","olacaktır.Ebeveyn kızgınlık anında","kontrollü davranarak çocuğa kızgınlığını","daha olumlu nasıl ifade edebileceği öğretilmeli.",
      "Yani küfürlü kelimelerin yerine uygun","ve kabul edilebilir kelimeleri kullanmayı","öğrenmesi sağlanmalı Çocuk küfür","içeren televizyon programlarından uzak","tutulmalı Çocuk tiyatro, resim, müzik","şiir, spor gibi uğraşlara yönlendirilmeli","Ebeveyn çocuğa ilgi ve sevgisini gösterilmelidir.","Çocuk önemsendiğini ya da takdir edildiğini",
      "hissetmek ister. Çocukta görülen uyum","ve davranış problemlerinde en etkili ilaç"," ilgi ve sevgidir."],  
    ),
    Blog(
      title: "Yatak Islatma",
      image: "assets/images/blog14.jpg",
      description: ["Yatak ıslatma sorunu erkek ve kız çocuklarda","özellikle 3 ila 5 yaşları arasında sık","görülmekle birlikte; erkeklerde daha ileri","yaşlara kadar devam edebilir.Ailede","yatak ıslatma öyküsü olan çocuklarda yatak","ıslatma sorunu gelişme riski toplumun geri","kalanına göre yüksektir. Aynı şekilde dikkat","eksikliği ve hiperaktivite bozukluğu olan",
      "çocuklarda yatak ıslatma sorununa daha"," sık rastlanır.","","Yatak Islatma Neden Olur?","","Mesane Hacminin Küçük Olması","İdrar Yolu Enfeksiyonu","Stres-Korku","Nörolojik Problemlerin Geç Dönemleri","Diyabet (Şeker Hastalığı)","Diabetes Insipidus veya ADH Hormonu Yetersizliği","Uyku Apnesi","Kabızlık","Prostat Bezinde Büyüme","","Yatak Islatma Hangi Belirtilerle Tanınır?",
      "","İdrar yaparken yanma şikayetinin olması,","Gün içinde sık idrara çıkma,","Sık sık susama,","İdrar renginde koyulaşma,","Kanlı idrar veya pembe renkli idrar yapma,","İdrar kaçırmaya kabızlığın eşlik etmesi,","","Çocuklarda Yatak Islatma Tanısı Nasıl Konur?","Yatak ıslatma davranışı ile ilişkili olabilen"," rahatsızlıkların tespit edilebilmesi için ",
      "hekim değerlendirmesi ile beraber bazı"," radyolojik ve laboratuvar tetkiklerinden"," yararlanılması gerekebilir. Bu kapsamda","aşağıdaki yöntemler yatak ıslatma","problemi olan çocuklarda tanının ","kesinleştirilmesi için kullanılabilir:","Tam idrar tetkiki,","Böbrek fonksiyon testleri,","Endokrinolojik problemlerin tespiti için"," hormon testleri,",
      "İdrar yolunun değerlendirilmesinde"," kullanılan röntgen veya tomografi teknikleri,","Uyku apnesi tanısına yönelik uyku testi.",],  
    ),     
    Blog(
      title: "Utangaçlık",
      image: "assets/images/blog16.jpg",
      description: ["Çocuğun utangaç olmasında anne-baba","etken midir?","Utangaçlığın oluşmasında genetik yatkınlık,","kişilik yapısı, anne baba tutumları,","sosyal yaşam yetersizliği gibi pek çok","neden vardır. Çocuk büyüdükçe yabancılardan","korkma ve huzursuz olma durumu genelde","azalır ve süreç içerisinde de kaybolur.","Bazı çocuklarda ise bu huzursuzluk","ve korku hali yaşam boyu devam eder.",
      "Yapılan araştırmalar huzursuzluk ve","korku hali devam eden çocukların fizyolojik","sinyal sistemlerinin daha kolay harekete","geçtiğini ve bu kişilerin yaşam boyu","daha kaygılı, tehlike algısı daha yüksek","insanlar olduklarını göstermektedir.","Genellikle tehlike sinyali düşük olan","çocukların kendileri gibi tehlike","sinyali eşiği düşük anne babaları vardır.","Bu ebeveynler çocuklarıyla ilgili aşırı",
      "kaygı duyarlar.Utanmaya yatkınlık bu","şekilde gelişir.","Çocuğun görüşünü ifade edemediği,","susturulduğu, itiraz hakkının olmadığı","aşırı sert bir havanın hüküm sürdüğü","aile ortamında yetişen çocukta güven","duygusu gelişemediği için utangaçlık"," yaygın bir davranış olarak karşımıza çıkar.","Benzer şekilde aşırı derecede korunup","kollanmış çocuklarda da bağımsız hareket","etme ve anne babadan ayrılıp başkalarıyla",
      "rahat ilişki kurma becerilerinin yeterince"," gelişmemiş olması sonucu utangaçlık görülür.","Bunun dışında sosyal ortamlara sokulmayan,","yeni insanlarla karşılaşma, tanışma fırsatı","bulamayan çocuklarda da utangaçlık"," sıklıkla karşılaşılan bir durumdur.","","Çocuğun utangaç olmaması için anne-baba ne"," yapmalıdır? ","","Yeni ortamlara uyum sağlaması için fırsat"," verin.",
      "Tehdit edici olarak algıladığı bir","ortama girerken aşırı zorlayıcı olmamaya"," dikkat edin.","Çocuğa ve ortama ait olumlu özelliklere","dikkat çekin.","Kendi sosyal ilişkilerinizi ve rollerinizi","gözden geçirin.","Utangaçlığı nedeniyle eleştirme,","suçlama,alay etme gibi tutumlardan kaçının.","Utangaçlık konusunu başkalarının ",
      "yanında konuşmayın.","Değişik sosyal ve kültürel ortamlarda"," bulunmasını, yeteneklerini tanıyıp","geliştirmesini sağlayın.","Özgüvenini arttıracak etkinlikler ve","beceriler edinmesine çalışın.","Hiçbir şey için zorlamayın.","Teşvik edin.","Aşırı koruyucu ya da baskıcı tutumlardan","kaçının.İşleri onun yerine yapmak ya da","onun adına konuşmak gibi davranışlardan",
      "uzak durun.","Kendi benzer deneyimlerinizi ve","yaşadıklarınızı çocuğunuzla paylaşın."],  
    ),
    Blog(
      title: "Çalma",
      image: "assets/images/blog17.jpg",
      description: ["Çocuklarda bir uyum ve davranış bozukluğu","olarak görülen çalma davranışının","altında yatan sebepler aşağıdaki gibi","özetlenebilir;","","1. Hatalı anne-baba tutumları","","Aşırı disiplinli tutum","Kıyaslamacı tutum","Paraya aşırı düşkünlük veya cimrilik","Maddi cezalar verme","Gereksinimlerin giderilmemesi","Önceki çalma davranışının pekiştirilmesi",
      "Yukarıdaki başlıklarda görüldüğü gibi,","anne-babaların aşırı disiplinli ve","katı tutumları çocuklarda çalma davranışına","neden olabilir. Çocuğun kardeşleriyle","veya komşu, arkadaş ve akraba çocuklarıyla","sıklıkla kıyaslandığı aile ortamları","çalma davranışına zemin hazırlayabilir.","Ailenin, çocuğun maddi ihtiyaçlarını","karşılamayarak onu cezalandırması,","ekonomik güçlükler nedeniyle çocuğun",
      "fiziksel ihtiyaçlarını giderememesi,","anne-babanın paraya aşırı düşkünlüğü","veya cimriliği, parayı çocuğa karşı"," bir tehdit aracı olarak kullanması","gibi hatalı tutumlar da çalma davranışının"," ortaya çıkmasına neden olmaktadır.","","2.Değersizlik duygusu ve öz-güven eksikliği","Çocuğun kendini değersiz hissetmesi bu","davranışı destekler. Kendini yetersiz","hisseden çocuk değerli gördüğü eşyaları",
      "çalarak kendini değerli kılmaya çalışır.","Yetersizlik duyguları taşıyan çocuğun","anne-babasının aşırı koruyucu tutumu","ve çocuğu sürekli kontrol etmeye çalışır","tavırları çocuğun bu duygularını pekiştirir.","Böylece, kendisine güvenilmediğini","düşünen çocuk giderek öz-güvenini","kaybetmeye başlar.","","3. Kıskançlık ve rekabet duyguları","Kardeşlerini veya başka çocukları",
      "kıskanan çocuklar yaşadıkları rekabet","duygusunu bastırabilmek için çalma","davranışı gösterebilirler. Bu nedenle","uyum bozukluğu geliştiren çocuklarda","çalmak, kıskanılan veya rekabet edilen","kişiden öç almak anlamına gelmektedir.","4.Sevgisizlik ve ilgisizlik","Fiziksel ve maddi ihtiyaçların giderilmemesi","gibi, manevi ihtiyaçların giderilmemeside","bu uyum bozukluğuna neden olabilmektedir.",
      "Yeterince sevilmediğini düşünen,","duygusal anlamda yeterince ilgi görmeyen","çocuk, başkalarına ait eşyaları çalarak","elde edemediği sevgi açığını gidermeye","alışır. Bu sebeple,kimsesiz çocuklarda,","sokak çocuklarında ve aileleri tarafından","dışlanmış çocuklarda çalma davranışının","görülme sıklığı fazladır."],  
    ),
    Blog(
      title: "Zorbalık",
      image: "assets/images/blog18.jpg",
      description: ["Zorbalığa Maruz Kalan Çocukların Tipik"," Özellikleri Nelerdir?","","Zorbalığa maruz kalan çocuklar"," genel olarak akranlarına göre fiziksel","açıdan farklılık gösteren çocuklar olurlar.","Farklılıklar çocukların ilgisini çeker","ve bazı çocuklar farklılıklara tahammül","etmede sıkıntı yaşarlar. Bu yüzden de","kendilerinden farklı gördüklerini dışlayıp,","alay ederek fiziksel veya psikolojik",
      "saldırıda bulunurlar.Genel olarak","akranlarına kıyasla çok daha kısa, daha","zayıf, narin gözüken veya yaşıtlarından ","daha önce gelişmiş, iri, çok uzun boylu","çocuklar kurban olarak seçilebilir.","Zorbalık mağduru çocuklar her zaman dış","görünüşü açısından farklı olan çocuklar","olmak zorunda da değildir. Sosyoekonomik","statüsü daha düşük olan çocuklar da","kurban olarak seçmeye meğillidirler.",
      "","Çocuğumuzun Zorbalığa Uğradığını Nasıl","Anlarız?","","Zorbalık, çocuklara büyük ölçüde duygusal","zarar verir ve zorbalığın kurbanı olan","çocuklarda birçok depresif belirti görülebilir.","Zorbalığa maruz kalan çocuklar birçok","bahane üreterek okula gitmek istemeyebilir","karın ve baş ağrısı gibi semptomlar","geliştirebilir, iştahında azalma görülebilir,","zamanla arkadaşlarından uzaklaşabilir,",
      "notları düşmeye başlayabilir ve uyku","problemleri yaşayabilir.","Çocuklar zorbalığa maruz kaldıklarında","bunu dile getirmek onlar için utanç"," verici olabilir. Bu yüzden zorbalığa","maruz kalan çoğu çocuk kendisini mağdur","konumunda görmek istemediği için bu durumu","saklamak isteyebilir.","Çocukların zorbalığa maruz kalıp kalmadığını","anlamak için, ebeveynlerin çocuklarına",
      "ve öğretmenlerine çocuklarının akranlarıyla","olan ilişkilerini sorması çok önemlidir.","","Çocuklarda Zorbalık Nasıl Önlenebilir?","","Çocuğun zorbalığa maruz kaldığı anlaşılırsa,","karşılık vermesini teşvik etmek yerine","karşı karşıya kaldığı durumla baş","edebilmesi için sosyal becerilerin"," kazandırılması gereklidir.","Zorbalığa maruz kalan çocuk, yetenekleri",
      "doğrultusunda kendisini geliştirmesi","adına teşvik edilebilir. Yetenekleri","doğrultusunda kendisini geliştiren","çocuğun özgüveni de yerine geleceğinden","sosyal becerileri de artacaktır.","Zorbalar kurbanlarını savunmasız,","özgüveni düşük ve kolayca manipüle","edebilecekleri kişiler arasından seçtikleri","için, sosyal becerileri artmış ve","özgüvenli bir çocuğu hedef alma ihtimalleri",
      "düşüktür. Aynı zamanda bir zorbayı","durdurmanın en etkili yollarından biri","çevresindeki kişileri harekete geçirmektir.","Çocukların büyük bir çoğunluğu hayatlarında","bir noktada zorbalığa tanık olurlar.","Bu yüzden çocukların zorbalığı durdurmada","oynayacakları önemli bir role sahip","olduklarını öğrenmeleri çok önemlidir.",],  
    ),   
    Blog(
      title: "Uyku",
      image: "assets/images/blog19.jpg",
      description: ["Çocuklarda uyku sorunu yaratan 7 neden","","Stres kabus gördürüyor","Yetişkinleri de zorlayan uyku sorunu kabuslar","en sık 3-5 yaş arasında görülüyor.","Stres, yoğun hayal gücü, güvensizlik","duygusu, yaşamda istenmeyen değişiklikler"," (ebeveyn boşanma ve kavgaları/ev-okul değiştirme)","travmatik olaylar gibi faktörler kabusları","artıran etmenlerden bazılarını oluşturuyor.","",
      "Uyurgezer mi?","Çocukların yüzde 15’inde görülen uyurgezerlik,","genellikle 4-8 yaş arasında başlayıp","ergenliğe doğru azalıyor. Gözler açık","olsa da ağır uyku döneminde olduğu için","çocuk eğer uyandırılmazsa sabah bunları hatırlamıyor.","Çocuğun can güvenliği açısından da tedbir","almak büyük önem taşıyor.","","Huzursuz bacak uykudan uyandırıyor","Uykuyu bölen bu sorunda bacaklarda ağrı,",
      "karıncalanma vb. huzursuzluklar yaşanıyor.","Huzursuz bacak sendromu, demir eksikliği","olan çocuklarda 5 kat daha fazla görülüyor.","B12 eksikliği ve ergenlikte ise aşırı","kahve/sigara tüketimi de bu sendrom riskini artırıyor.","","Uyku terörü nedir?","‘Gece terörü’ olarak da bilinen uyku","terörü, genellikle uykunun 2-3. saatinde","meydana geliyor. Çocuk dehşet içinde","ağlayarak kalksa da tam olarak uyanmadığından",
      "sabah olayı hatırlayamıyor. Gece terörü","  30 saniye ile 3 dakika arasında sürüyor.","","Akşam yemeğini geç yemeyin","Aşırı açlık ya da aşırı tokluk uyumayı","zorlaştıran etkenlerdir. Bu nedenle akşam","yemeği uykuya yakın olmamalı. Aksi","takdirde enerji vermesinin yanı sıra","hazımsızlık, gaz problemleri ve uyuma güçlüğü","yaratabiliyor.Uyku apnesi neden olur?","Çocuklarda uyku sorunlarından bir ",
      "diğeri de uyku apnesidir. Uyku sırasında"," solunumun geçici olarak durması anlamına"," gelen uyku apnesi, sıklıkla 4-6 yaş arasında"," görülür. Çocuklarda en sık bademcik","geniz eti büyümesi ve aşırı kilo durumunda","görülür. Gürültülü horlama, huysuzluk,","yorgunluk, dikkatsizlik ve gelişme geriliği","gibi sorunlara hatta hayati riske yol "," açabiliyor.","Önemli bir uyku bozukluğu olan narkolepsi,",
      " gündüz uyanıkken ani gelen uyku ataklarıdır.","Kişi konuşurken veya yemek yerken aniden","uykuya dalıyor. Buna bazen çok sevindiğinde"," ya da üzüldüğünde aniden yere düşme de","eşlik edebiliyor.","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],  
    ),
    Blog(
      title: "Aşırı Koruyucu Ebeveynlik",
      image: "assets/images/blog21.jpg",
      description: ["Anne babanın çocuğu aşırı koruması,","çocuğa gerektiğinden fazla kontrol ve","özen göstermesi anlamına gelir.","Bunun sonucu çocuk diğer kimselere aşırı","bağımlı, kendine güveni olmayan,","duygusal kırıklıkları olan bir kişi","olabilir. Çocuğun yaşamı boyunca sürebilen","bu bağımlılık, psiko-sosyal olgunluğu","olumsuz açıdan etkiler ve çocuğun","kendi kendine yetmesine olanak vermez.",
      "Ana babanın aşırı koruyuculuğu çocuğun","okul başarısını ve okula uyumunu da etkiler.","Bebekleştirme aşırı korumacı yaklaşımın","tipik özelliğidir. 8-9 yaşlarına geldiği","halde yemeğini annesinin yedirmesini bekleyen,","11-12 yaşlarında ana-babasıyla aynı yatağı","paylaşan, hatta annesi tarafından yıkanan","çocuk örneklerimiz vardır. Böyle bir ortamda","annenin çocukla iç içe geçmiş beraberliği,",
      "çocukta bir anne bağımlılığının oluşumuna","neden olabilir.Büyümesine izin verilmeyen","bu aşırı koruyucu ortamda, çocuğun","“toplumsal gelişimi” engellenmiş olur.","Bu da onun arkadaş ilişkilerini olumsuz","etkileyebilir ve arkadaşları tarafından","dışlanmasına neden olabilir. Gözlemlerimiz","aşırı korumacı annenin evliliğinde bulamadığı","doyumu, çocuklarıyla olan ilişkilerinde","aramakta olduğunu göstermektedir.",
      "Bu gereksiz ve sağlıksız özverinin faturası","ilerideki yıllarda annenin yüksek","beklenti içine girmesiyle, yine çocuğa kesilmektedir.","Kaynak: Aşırı koruyucu anne baba tutumu","","Sonuç olarak aşırı koruma:","1).Çocuğun kişiliğini geliştirmez;","bağımlı, talepkar, ürkek, inatçı, istediğini",
      "tutturan, mantıksız kavgalar çıkaran,","çabuk mutsuz olan bir çocuk ve ileride","benzer niteliklere sahip bir yetişkin olur","2).Anne/babayı ebeveyn rolünün dışına","çıkarmaz; birer yetişkin olarak yaşayabilecekleri","günlük hayatlarına karı/koca ve kadın/erkek","ilişkilerine engel olur. Çocuk odaklı bir",
      "yaşamda, anne/baba kendi insanca öz ihtiyaçlarına","sağlıklı bir şekilde sahip çıkamazlar.","","","","","","","","","","","",""],  
    ),

  ];
  int? _currentBlogIndex;

  List<Blog> get bloglist => _bloglist;
  int? get currentBlogIndex => _currentBlogIndex;

  set currentBlogIndex(int? newIndex) {
    
    //update current tarif index
    _currentBlogIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
