import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/storage.dart';

class BottomNavigator extends StatelessWidget {
  
  final int selectedIndex;

  const BottomNavigator({
    Key? key,
    required this.selectedIndex,
     
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white, // Arka planı beyaz yap
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => context.go("/home"),
            icon: const Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () => context.go("/sor"),
            icon: const Icon(Icons.question_mark),
          ),
          IconButton(
            onPressed: () => context.go("/blog"),
            icon: const Icon(Icons.menu_book_outlined),
          ),
          IconButton(
            onPressed: () => context.go("/aktivite"),
            icon: const Icon(Icons.interests_outlined),
          ),
          IconButton(
            onPressed: () => context.go("/profile"),
            icon: const Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
