import 'package:flutter/material.dart';
import 'text_field_container.dart';

//deger girme button textfield
class KayitInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isAdSoyad;
  final String inPhoneNumber;
  final bool isEmail;
  final bool isPassword;
  

  final ValueChanged<String> onChange;
  const KayitInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChange,
    required this.isAdSoyad, 
    required this.isEmail,
    required this.isPassword,
    required this.inPhoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChange,
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(icon, color: Color(0xFF3F3D56)),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            gapPadding: 1.0,
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey.shade200)),
        fillColor: Colors.grey.shade200,
      ),
    ));
  }
}
