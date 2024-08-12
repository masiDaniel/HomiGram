import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('categories Page'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/specificHouse');
                },
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/hg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/specificHouse');
                },
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/hg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/specificHouse');
                },
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/hg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/specificHouse');
                },
                child: SizedBox(
                  height: 500,
                  child: Image.asset(
                    'assets/hg.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 500,
                child: Image.asset(
                  'assets/hg.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
