import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: const ProfilePage(), // ✅ หน้าเริ่มต้นคือหน้าโปรไฟล์
    );
  }
}