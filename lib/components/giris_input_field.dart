import 'package:flutter/material.dart';
import 'text_field_container.dart';

//deger girme button textfield
class GirisInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isEmail;
  final bool isPassword;
  
  final ValueChanged<String> onChange;
  const GirisInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChange,
    required this.isEmail,
    required this.isPassword,
   
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
