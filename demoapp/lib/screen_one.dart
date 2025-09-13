import 'package:demoapp/data.dart';
import 'package:demoapp/screen_two.dart';
import 'package:flutter/material.dart';

class GenZTopicsScreen extends StatelessWidget {
  const GenZTopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🔥 GenZ Topics")),
      body: ListView.builder(
        itemCount: DataClass().genzData.length,
        itemBuilder: (context, index) {
          final section = DataClass().genzData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        GenZDetailScreen(highlightId: section['id']),
                  ),
                );
              },
              child: Text(section['title']??"N/A"),
            ),
          );
        },
      ),
    );
  }
}
