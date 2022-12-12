import 'package:flutter/material.dart';
import 'package:water_quality_app/home.dart';
import 'package:water_quality_app/map.dart';

// dropdown list for types of water testers
const List<String> list = <String>[
  'Complete 16 Parameter Test Kit',
  'Water Hardness Test Kit (Stretch Goal)'
];

class SelectTesterPage extends StatelessWidget {
  const SelectTesterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primarySwatch: Colors.cyan
      ),
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

  // style the elevated buttons and dropdown
  final ButtonStyle styleButton1 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.cyan);
  final ButtonStyle styleButton2 = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), backgroundColor: Colors.cyan);
  final TextStyle styleDropdown =
      const TextStyle(fontSize: 20, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: "WATER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: " QUALITY TESTER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
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
              style: styleButton1,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: const Text(
                'Test Water',
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              style: styleButton2,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapPage(fromNavHome: false),
                  ),
                );
              },
              child: const Text("View Map",
                  textAlign: TextAlign.center),
            )
          ],
        ),
      ),
    );
  }
}
