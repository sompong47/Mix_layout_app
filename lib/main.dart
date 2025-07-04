import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final List<String> imagePaths = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GG กับพองเพื่อน'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            // 🔼 GridView ด้านบน
            Expanded(
              flex: 1,
              child: GridView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: imagePaths.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 คอลัมน์
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

            // 🔽 ListView ด้านล่าง
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 9,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text('รายการที่ ${index + 1}'),
                      subtitle: const Text('รายละเอียดเพิ่มเติม'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}