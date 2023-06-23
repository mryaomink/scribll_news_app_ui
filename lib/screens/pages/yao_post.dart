import 'package:flutter/material.dart';

class YaoPost extends StatelessWidget {
  const YaoPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Post"),
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
