import 'package:bitirme_parent_app/blog/blog_detay.dart';
import 'package:bitirme_parent_app/blog/blog_detay_provider.dart';
import 'package:bitirme_parent_app/blog/blog_list.dart';
import 'package:bitirme_parent_app/screens/aktiviteScreen.dart';
import 'package:bitirme_parent_app/screens/homeScreen.dart';
import 'package:bitirme_parent_app/screens/profile.dart';
import 'package:bitirme_parent_app/screens/soruSor.dart';
import 'package:bitirme_parent_app/widgets/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  

  int index = 2;
  late final dynamic blogProvider;

  @override
  void initState() {
    super.initState();

    // Get the BlogProvider
    blogProvider = Provider.of<BlogProvider>(context, listen: false);
  }

  void goToBlog(int blogIndex) {
    blogProvider.currentBlogIndex = blogIndex;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BlogDetayScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(206, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Consumer<BlogProvider>(
          builder: (context, value, child) {
            final List<Blog> bloglist = value.bloglist;

            return ListView.builder(
              itemCount: (bloglist.length / 2).ceil(),
              itemBuilder: (context, index) {
                final int startIndex = index * 2;

                return InkWell(
                  onTap: () => goToBlog(startIndex),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => goToBlog(startIndex),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.asset(
                              bloglist[startIndex].image,
                              width: 170,
                              height: 170,
                            ),
                          ),
                        ),
                        if (startIndex + 1 < bloglist.length)
                          InkWell(
                            onTap: () => goToBlog(startIndex + 1),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                bloglist[startIndex + 1].image,
                                width: 170,
                                height: 170,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigator(selectedIndex: 2),
    );
  }
}

Widget getSelectedWidget({required int index}) {
    switch (index) {
      case 1:
        return const SoruSorScreen();
      case 2:
        return const BlogScreen();
      case 3:
        return const AktiviteScreen();
      case 4:
        return const ProfileScreen();
    }
    return Container();
  }
