import 'package:flutter/material.dart';
import 'package:water_quality_app/home.dart';

Future<void> main() async {
  runApp(const SelectTesterPage());
}

// dropdown list for types of water testers
const List<String> list = <String>[
  'Water Hardness Test Kit',
  'Complete 16 Parameter Test Kit'
];

class SelectTesterPage extends StatelessWidget {
  const SelectTesterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TesterDropdown(),
    );
  }
}

class TesterDropdown extends StatefulWidget {
  const TesterDropdown({super.key});

  @override
  State<TesterDropdown> createState() => _TesterDropdownState();
}

class _TesterDropdownState extends State<TesterDropdown> {
  // set initial value to first in list
  String dropdownValue = list.first;

  // style the elevated button and dropdown
  final ButtonStyle styleButton = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.green);
  final TextStyle styleDropdown =
      const TextStyle(fontSize: 20, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Varify Water Tester')
          // add varify logo at some point potentially
          // SizedBox(child: Image.asset('assets/varify_logo.jpg', fit: BoxFit.contain)),
          ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              alignment: Alignment.center,
              style: styleDropdown,
              isExpanded: true,
              underline: Container(
                height: 10,
              ),
              onChanged: (String? value) {
                // called when the user selects an item
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            ElevatedButton(
              style: styleButton,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Text('Choose this Test Type'),
            )
          ],
        ),
      ),
    );
  }
}
