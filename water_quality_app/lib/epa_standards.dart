import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EPAStandards extends StatelessWidget {
  EPAStandards({super.key});

  final standard = "";
  final TextStyle textstyle1 = GoogleFonts.oswald(
    fontSize: 15,
   // fontWeight: FontWeight.bold,
    textStyle: TextStyle(color: Colors.black, letterSpacing: .5),
  );
  final TextStyle textstyle2 = GoogleFonts.lato(
    fontSize: 12,
    textStyle: TextStyle(color: Colors.black, letterSpacing: .5),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: "EPA",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: " STANDARDS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 49, 227, 209),
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("pH", style: textstyle1),
                              content: Text(
                                  "EPA Standard Recommended Limit: 6.5 - 8.5. \nLow pH causes bitter metalic taste. \nHigh pH causes slippery feel.",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "pH",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:
                                  Text("Hydrogen Sulfide", style: textstyle1),
                              content: Text(
                                  "EPA Standard Recommended Limit: 0 mg/L. \nCauses rotten egg odor and foul taste",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Hydrogen Sulfide",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Iron",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 0.3 mg/L \nCauses rusty color and staining, metallic taste",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Iron",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Copper",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 1.3 mg/L. \nCauses liver and kidney damage",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Copper",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Lead",
                                style: textstyle1,
                              ),
                              content: Text(
                                "EPA Standard Recommended Limit: 0.015 mg/L. \nCauses deficit in learning ability for children, kidney problems, and high blood pressure in adults.",
                                style: textstyle2,
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Lead",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Manganese",
                                style: textstyle1,
                              ),
                              content: Text(
                                "EPA Standard Recommended Limit: 0.05 mg/L. \nCauses black/brown color, bitter metallic taste",
                                style: textstyle2,
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Manganese",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Total Chlorine",
                                style: textstyle1,
                              ),
                              content: Text(
                                "EPA Standard Recommended Limit: 4 mg/L. \nCauses skin irritation and stomach discomfort",
                                style: textstyle2,
                              ),
                            );
                          });
                    },
                    child: Text(
                      "Total Chlorine",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Free Chlorine",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: . \nCauses ",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Free Chlorine",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Nitrate",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 10 mg/L. \nCauses Blue Baby syndrome in infants under 6 months, shortness of breath, nausea, and dizziness",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Nitrate",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Nitrite",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 1 mg/L. \nCauses Blue Baby Syndrome in infants under 6 months, shortness of breath, nausea, and dizziness",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Nitrite",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Sulfate",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 250 mg/L. \nCauses salty taste",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Sulfate",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Zinc",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 5 mg/L. \nCauses metallic taste",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Zinc",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Flouride",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 4 mg/L. \nCauses bone disease and mottied teeth",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Flouride",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Sodium Chloride",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 250 mg/L. \nCauses bloating, swollen hands and feet",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Sodium Chloride",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Total Alkalinity",
                                style: textstyle1,
                              ),
                              content: Text(
                                  "EPA Standard Recommended Limit: 75-150 mg/L. \nLow alkalinity associated with acidic pH and corrosion",
                                  style: textstyle2),
                            );
                          });
                    },
                    child: Text(
                      "Total Alkalinity",
                      style: textstyle1,
                    )),
              ),
              Container(
                width: 300,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
