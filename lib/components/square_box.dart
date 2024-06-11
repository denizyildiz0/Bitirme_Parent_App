import 'package:flutter/material.dart';

//google ve apple ile giriş sayfası
class SquareBox extends StatelessWidget {
  final String ImagePath;
  const SquareBox({Key? key, required this.ImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(ImagePath, height: 30),
    );
  }
}
