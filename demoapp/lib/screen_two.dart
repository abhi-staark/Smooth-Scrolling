import 'package:demoapp/data.dart';
import 'package:flutter/material.dart';

class GenZDetailScreen extends StatefulWidget {
  final String? highlightId;
  const GenZDetailScreen({super.key, this.highlightId});

  @override
  State<GenZDetailScreen> createState() => _GenZDetailScreenState();
}

class _GenZDetailScreenState extends State<GenZDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {};

  @override
  void initState() {
    super.initState();

    for (var section in DataClass().genzData) {
      _sectionKeys[section['id']??"N/A"] = GlobalKey();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.highlightId != null &&
          _sectionKeys.containsKey(widget.highlightId)) {
        _scrollToSection(widget.highlightId!);
      }
    });
  }

  void _scrollToSection(String id) {
    final keyContext = _sectionKeys[id]?.currentContext;
    if (keyContext != null) {
      Scrollable.ensureVisible(
        keyContext,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GenZ Detail")),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: DataClass().genzData.map((section) {
            return Container(
              key: _sectionKeys[section['id']],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(section['title']??'N/A',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  if (section['imageUrl'] != null)
                    Image.network(section['imageUrl']!, height: 150),
                  const SizedBox(height: 8),
                  Text(section['description'] ?? ""),
                  const Divider(),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
