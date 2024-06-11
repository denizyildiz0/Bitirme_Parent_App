import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../components/giris_input_field.dart';
import '../components/rounded_button.dart';
import '../components/square_box.dart';
import '../fonts/app_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Opacity(
              opacity: 0.6,
              
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(53.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/plogo.png",
                    height: 280,
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xffF3F3F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        GirisInputField(
                          isEmail: true,
                          isPassword: false,
                          hintText: "E-mail",
                          icon: Icons.email_outlined,
                          onChange: (value) {},
                        ),
                        GirisInputField(
                          isEmail: false,
                          isPassword: true,
                          hintText: "Şifre",
                          icon: Icons.lock_outlined,
                          onChange: (value) {},
                        ),
                        Text(
                          "Şifreni mi Unuttun?",
                          style: AppTextStyle.MINI_BOLD_DESCRIPTION_TEXT,
                        ),
                        RoundedButton(
                          text: "Giriş Yap",
                          press: () {
                            GoRouter.of(context).go('/home');
                          },
                          color: Color(0xFF3F3D56),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 50,
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Ya da",
                        style: AppTextStyle.MINI_DESCRIPTION_TEXT,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        endIndent: 50,
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareBox(
                    ImagePath: "assets/logo/google.jpeg",
                  ),
                  SizedBox(width: 20),
                  SquareBox(
                    ImagePath: "assets/logo/apple.jpeg",
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Üye Değil misin?",
                    style: TextStyle(color: Color.fromARGB(227, 126, 126, 126)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).go('/register');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Text(
                      "Şimdi Üye Ol!",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 1,
            child: Opacity(
              opacity: 0.2,
              child: SvgPicture.asset(
                "assets/images/wave-2.svg",
                height: 160,
                width: 170,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
