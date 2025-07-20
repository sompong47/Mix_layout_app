
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../profile_page.dart';
import '../all_items_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Home'),
          ),
          ListTile(
            title: const Text('โปรไฟล์'),
            onTap: () {
              Get.to(() => const ProfilePage()); // ไปยังหน้า profile_page.dart
            },
          ),
          ListTile(
            title: const Text('ดูรูปทั้งหมด'),
            onTap: () {
              Get.to(() => const AllItemsPage()); // ไปยังหน้า all_items_page.dart
            },
          ),
        ],
      ),
    );
  }
}