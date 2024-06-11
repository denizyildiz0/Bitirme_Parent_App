import 'package:bitirme_parent_app/blog/blog_detay_provider.dart';
import 'package:bitirme_parent_app/components/neu_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogDetayScreen extends StatelessWidget {
  const BlogDetayScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BlogProvider>(
      builder: (context, value, child) {
        final bloglist = value.bloglist;
        final currentBlog = bloglist[value.currentBlogIndex ?? 0];

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back),
                        ),
                        const Text("E B E V E Y N   R E H B E R İ"),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      ],
                    ),
                    NeuBox(
                      child: Column(

                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              currentBlog.image,
                              width: 300, 
                              height: 220, 
                              fit: BoxFit.fill, 
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        currentBlog.title,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      for (String description
                                          in currentBlog.description)
                                        Text(description),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
