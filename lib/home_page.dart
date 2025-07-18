import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'all_items_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<String> titles = [
    "วันเลือกชมรม",
    "3หน่อเข้าวัด",
    "3สหายทำบุญ",
    "แอ็คหล่อหน้ากระจก",
    "ถ่ายริมน้ำซะหน่อย",
    "อกหัก",
    "บักเคมเบะ",
    "หล่อมากครับ",
    "แอ็คอีกรอบ"
  ];

  static final List<Color> colors = [
    Colors.redAccent,
    Colors.blueAccent,
    const Color.fromARGB(255, 80, 220, 10),
    Colors.orangeAccent,
    Colors.purpleAccent,
    const Color.fromARGB(255, 21, 202, 54),
    Colors.amberAccent,
    const Color.fromARGB(255, 11, 27, 203),
    Colors.pinkAccent,
  ];

  static final List<String> imagePaths = [
    'assets/images/002.jpg',
    'assets/images/004.jpg',
    'assets/images/005.jpg',
    'assets/images/007.jpg',
    'assets/images/008.jpg',
    'assets/images/006.jpg',
    'assets/images/000.jpg',
    'assets/images/001.jpg',
    'assets/images/009.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GG กับพองเพื่อน'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: imagePaths.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),

          // 🔽 ส่วน ListView
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔸 ปุ่ม "แสดงทั้งหมด"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const AllItemsPage());
                    },
                    child: const Text(
                      "แสดงทั้งหมด",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                // 🔸 แสดงรายการแค่ 5 รายการ
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemBuilder: (context, index) {
                      return buildItem(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(int index) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 4,
      shadowColor: colors[index].withOpacity(0.6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colors[index].withOpacity(0.7),
          child: Text(
            '${index + 1}',
            style: const TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          titles[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: colors[index],
            shadows: [
              Shadow(
                blurRadius: 4,
                color: colors[index].withOpacity(0.7),
                offset: const Offset(1, 1),
              )
            ],
          ),
        ),
        subtitle: const Text('รายละเอียดเพิ่มเติม'),
        trailing: Icon(Icons.star, color: colors[index]),
      ),
    );
  }
}
