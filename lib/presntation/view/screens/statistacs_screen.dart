import 'package:flutter/material.dart';

class StatistacsScreen extends StatefulWidget {
  const StatistacsScreen({super.key});

  @override
  State<StatistacsScreen> createState() => _StatistacsScreenState();
}

class _StatistacsScreenState extends State<StatistacsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Statistacs"),
      ),
    );
  }
}
