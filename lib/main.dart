import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:untitled/screens/cam.dart';
import 'package:untitled/screens/scan.dart';
import 'package:untitled/screens/settings_page.dart';
import 'package:untitled/screens/doc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc Vault',
        theme: ThemeData(
          fontFamily: 'ClashGrotesk',
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const DocsPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.file),
            label: 'Docs',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              elevation: 0,
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                top: Radius.circular(0.0),
              )),
              context: context,
              barrierColor: Colors.transparent,
              isDismissible: true,
              builder: (context) => const AddDocBottomSheet());
        },
        child: const Icon(LucideIcons.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class AddDocBottomSheet extends StatelessWidget {
  const AddDocBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperPath(),
      child: Container(
        color: Colors.deepPurple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 2),
            Column(
              children: [
                IconButton.filled(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                          title: 'Hello',
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    LucideIcons.scanLine,
                    color: Colors.white,
                  ),
                  iconSize: 60,
                  color: Colors.deepPurple,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Scan Doc',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      LucideIcons.arrowUp,
                      color: Colors.white,
                    ),
                    iconSize: 30,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Import Doc',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      LucideIcons.refreshCw,
                      color: Colors.white,
                    ),
                    iconSize: 30,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    textAlign: TextAlign.justify,
                    ' Sync  with \n DigiLocker',
                    style: TextStyle(
                      wordSpacing: 2,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ]),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(LucideIcons.x),
              color: Colors.white,
              iconSize: 45,
            )
          ],
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 50);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 100);
    path.quadraticBezierTo(size.width / 2, 0, 0, 100);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
