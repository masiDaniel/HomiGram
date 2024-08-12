import 'package:flutter/material.dart';
import 'package:homi_front_end/components/my_text_field.dart';

///
///how will i handle having multiple arguments to pass to a url, ie searching
///and filtering
///
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  List<String> cities = [
    "nairobi",
    "kisumu",
    "mombasa",
    "nyeri",
    "kakamega",
    "kisii",
    "embu",
    "syokimau"
  ];
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: myTextField(
                        controller: _searchController,
                        hintText: "Search",
                        obscureText: false,
                        suffixIcon: Icons.search,
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 5,
                indent: 20,
                endIndent: 20,
                color: Colors.green,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('filters'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Free wifi'),
                  Checkbox(
                    value: _isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked1 = value!;
                      });
                    },
                  ),
                  const Text('Swimming pool'),
                  Checkbox(
                    value: _isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked2 = value!;
                      });
                    },
                  ),
                  const Text('Lounge'),
                  Checkbox(
                    value: _isChecked3,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked3 = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                hint: const Text("Select a city"),
                value: selectedCity,
                borderRadius: BorderRadius.circular(16),
                focusColor: Colors.green,
                dropdownColor: Colors.amber,
                items: cities.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCity = newValue;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/categories');
                  },
                  child: const Text('Cheapest')),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  ///how do i intergrate the name?
                  ///how can i intergrate a singular function that wen tapped is only defined once ?
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
                      width: 10,
                    ),
                    SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/hg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/categories');
                  },
                  child: const Text('Trending')),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/hg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/hg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/categories');
                  },
                  child: const Text('Top rated')),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/hg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/hg.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
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
            ],
          ),
        ),
      ),
    );
  }
}
