import 'package:flutter/material.dart';
//import 'package:lucide_icons/lucide_icons.dart';
import 'package:untitled/cards/aadhar.dart';
import 'package:untitled/cards/pan.dart';

// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';

import 'folders/education_folder.dart';
import 'folders/finance_folder.dart';
import 'folders/health_folder.dart';
import 'folders/identity_folder.dart';

class DocsPage extends StatelessWidget {
  const DocsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 80.0,
            // actions: [
            //   IconButton(
            //     onPressed: () {},
            //     icon: const Icon(
            //       LucideIcons.folderPlus,
            //       color: Colors.black,
            //     ),
            //   )
            // ],
            //
            title: const Text(
              'Your Docs',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(children: [
              CarouselSlider(
                items: <Card>[
                  Card(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20.0),
                      onTap: () {}, //Todo
                      child: const AadharCard(),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20.0),
                      onTap: () {}, //TO DO
                      child: const PanCard(),
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: 280,
                  // aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  animateToClosest: true,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enlargeFactor: 0,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  scrollDirection: Axis.horizontal,
                ),
              ),

              // const AadharCard(),
              // const PanCard(),

              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Text('     Categories', style: TextStyle(fontSize: 20.0))
                ],
              ),
              const SizedBox(height: 20.0),
              SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const IdentityFolderPage(),
                                ),
                              );
                            },
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/Identity.png'),
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text('Identity',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ))
                              ],
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EducationFolderPage(),
                                ),
                              );
                            },
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/education.png'),
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text('Education',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HealthFolderPage(),
                                ),
                              );
                            },
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/Health.png'),
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text('Health',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ))
                              ],
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FinanceFolderPage(),
                                ),
                              );
                            },
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/Finance.png'),
                                  height: 100.0,
                                  width: 100.0,
                                ),
                                Text('Finance',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
