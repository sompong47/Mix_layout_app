import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_app/components/drawer.dart';
import 'profile_page.dart';
import 'all_items_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ProfilePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('หน้าแรก')),
      drawer: const MyDrawer(),
      body: const Center(child: Text('เนื้อหาหน้าแรก')),
    );
  }
}
