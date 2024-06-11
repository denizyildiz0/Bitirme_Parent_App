import 'package:bitirme_parent_app/screens/aktiviteScreen.dart';
import 'package:bitirme_parent_app/screens/homeScreen.dart';
import 'package:bitirme_parent_app/screens/loginScreen.dart';
import 'package:bitirme_parent_app/screens/profile.dart';
import 'package:bitirme_parent_app/screens/registerScreen.dart';
import 'package:bitirme_parent_app/screens/soruSor.dart';
import 'package:bitirme_parent_app/screens/splash.dart';
import 'package:bitirme_parent_app/static/boarding.dart';
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
      path: '/soru',
      builder: (context, state) => const SoruSorScreen(),
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
  ],
);