import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class IdentityFolderPage extends StatelessWidget {
  const IdentityFolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              LucideIcons.arrowLeft,
              color: Colors.black,
            ),
          );
        }),
        title: const Text(
          'Identity',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(LucideIcons.plus)),
    );
  }
}
