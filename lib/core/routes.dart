import 'package:bitirme_parent_app/blog/blogScreen.dart';
import 'package:bitirme_parent_app/screens/aktiviteScreen.dart';
import 'package:bitirme_parent_app/screens/homeScreen.dart';
import 'package:bitirme_parent_app/screens/loginScreen.dart';
import 'package:bitirme_parent_app/screens/profile.dart';
import 'package:bitirme_parent_app/screens/registerScreen.dart';
import 'package:bitirme_parent_app/screens/soruSor.dart';
import 'package:bitirme_parent_app/screens/splash.dart';
import 'package:bitirme_parent_app/sohbet/cocuktan_ebeveyne_soru.dart';
import 'package:bitirme_parent_app/sohbet/ebeveynden_cocuga_soru.dart';
import 'package:bitirme_parent_app/sohbet/karsilikli_soru.dart';
import 'package:bitirme_parent_app/sohbet/sorBanaAciklama.dart';
import 'package:bitirme_parent_app/static/boarding.dart';
import 'package:bitirme_parent_app/tarifler/bebek_tarif.dart';
import 'package:bitirme_parent_app/tarifler/cocuk_tarif.dart';
import 'package:bitirme_parent_app/tarifler/tarif_kart.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/aktivite',
      builder: (context, state) => const AktiviteScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const BoardingScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/sor',
      builder: (context, state) => const SoruSorScreen(),
    ),
    GoRoute(
      path: '/blog',
      builder: (context, state) => const BlogScreen(),
    ),
    GoRoute(
      path: '/sorbana',
      builder: (context, state) => const SorBanaAciklama(),
    ),
    GoRoute(
      path: '/bebek',
      builder: (context, state) => const BebekTarif(),
    ),
    GoRoute(
      path: '/cocuk',
      builder: (context, state) => const CocukTarif(),
    ),
    GoRoute(
      path: '/cocuktanEbeveyne',
      builder: (context, state) => const CocuktanEbeveyneSoru(),
    ),
    GoRoute(
      path: '/ebeveyndenCocuga',
      builder: (context, state) => const EbeveyndenCocugaSoru(),
    ),
    GoRoute(
      path: '/karsilikli',
      builder: (context, state) => const KarsilikliSoru(),
    ),
    GoRoute(
      path: '/atistirma',
      builder: (context, state) => const AtistirmalikTarifScreen(),
    ),

  ],
);