import 'package:flutter/material.dart';

class EPAStandards extends StatelessWidget {
  const EPAStandards({super.key});

  final standard = "";
  final TextStyle textstyle2 = const TextStyle(fontSize: 15, fontStyle: FontStyle.italic);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("pH"),
                            content: Text(
                                "EPA Standard Recommended Limit: 6.5 - 8.5. \nLow pH causes bitter metalic taste. \nHigh pH causes slippery feel.",
                                style: textstyle2 ),
                          );
                        });
                  },
                  child: const Text("pH")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Hydrogen Sulfide"),
                            content: Text(
                                "EPA Standard Recommended Limit: 0 mg/L. \nCauses rotten egg odor and foul taste",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Hydrogen Sulfide")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Iron"),
                            content: Text(
                                "EPA Standard Recommended Limit: 0.3 mg/L \nCauses rusty color and staining, metallic taste",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Iron")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Copper"),
                            content: Text(
                                "EPA Standard Recommended Limit: 1.3 mg/L. \nCauses liver and kidney damage",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Copper")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Lead"),
                            content: Text(
                                "EPA Standard Recommended Limit: 0.015 mg/L. \nCauses deficit in learning ability for children, kidney problems, and high blood pressure in adults.",
                                style: textstyle2,),
                          );
                        });
                  },
                  child: const Text("Lead")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Manganese"),
                            content: Text(
                                "EPA Standard Recommended Limit: 0.05 mg/L. \nCauses black/brown color, bitter metallic taste",
                                style: textstyle2, ),
                          );
                        });
                  },
                  child: const Text("Manganese")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Total Chlorine"),
                            content: Text(
                                "EPA Standard Recommended Limit: 4 mg/L. \nCauses skin irritation and stomach discomfort",
                                style: textstyle2, ),
                          );
                        });
                  },
                  child: const Text("Total Chlorine")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Free Chlorine"),
                            content: Text(
                                "EPA Standard Recommended Limit: . \nCauses ",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Free Chlorine")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Nitrate"),
                            content: Text(
                                "EPA Standard Recommended Limit: 10 mg/L. \nCauses Blue Baby syndrome in infants under 6 months, shortness of breath, nausea, and dizziness",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Nitrate")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Nitrite"),
                            content: Text(
                                "EPA Standard Recommended Limit: 1 mg/L. \nCauses Blue Baby Syndrome in infants under 6 months, shortness of breath, nausea, and dizziness",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Nitrite")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Sulfate"),
                            content: Text(
                                "EPA Standard Recommended Limit: 250 mg/L. \nCauses salty taste",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Sulfate")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Zinc"),
                            content: Text(
                                "EPA Standard Recommended Limit: 5 mg/L. \nCauses metallic taste",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Zinc")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Flouride"),
                            content: Text(
                                "EPA Standard Recommended Limit: 4 mg/L. \nCauses bone disease and mottied teeth",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Flouride")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Sodium Chloride"),
                            content: Text(
                                "EPA Standard Recommended Limit: 250 mg/L. \nCauses bloating, swollen hands and feet",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Sodium Chloride")),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Total Alkalinity"),
                            content: Text(
                                "EPA Standard Recommended Limit: 75-150 mg/L. \nLow alkalinity associated with acidic pH and corrosion",
                                style: textstyle2),
                          );
                        });
                  },
                  child: const Text("Total Alkalinity")),
            ],
          ),
        ),
      ),
    );
  }
}
