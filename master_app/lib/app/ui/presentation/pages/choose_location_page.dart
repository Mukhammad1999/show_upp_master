import 'package:flutter/material.dart';

class ChooseLocationPage extends StatelessWidget {
  const ChooseLocationPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Stack(
        children: [],
      ),
    );
  }
}
