import 'package:flutter/material.dart';

class YaoArtikel extends StatelessWidget {
  const YaoArtikel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Artikel"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
