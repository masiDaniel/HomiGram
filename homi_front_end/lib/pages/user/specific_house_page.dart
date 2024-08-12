import 'package:flutter/material.dart';

class SpecificHousePage extends StatefulWidget {
  const SpecificHousePage({super.key});

  @override
  State<SpecificHousePage> createState() => _SpecificHousePageState();
}

class _SpecificHousePageState extends State<SpecificHousePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specific house Page'),
      ),
      body: const Center(
        child: Text('specific house'),
      ),
    );
  }
}
