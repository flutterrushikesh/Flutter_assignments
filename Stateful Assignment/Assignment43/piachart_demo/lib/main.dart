import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPiachart(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPiachart extends StatefulWidget {
  const MyPiachart({super.key});
  @override
  State createState() => _MyPiachartState();
}

class _MyPiachartState extends State {
  Map<String, double> data = {
    "food": 320,
    "Movie": 530,
    "shopping": 1290,
    "fuel": 210,
    "medicine": 204,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie chart demo"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Column(
          children: [
            PieChart(
              dataMap: data,
              animationDuration: const Duration(milliseconds: 2500),
              centerText: "Total of money spent",
              colorList: const [
                Colors.black,
                Colors.blue,
                Colors.amber,
                Colors.red,
                Colors.purple
              ],
              chartValuesOptions: const ChartValuesOptions(
                showChartValues: false,
                showChartValuesInPercentage: true,
              ),
              legendOptions: const LegendOptions(
                legendPosition: LegendPosition.bottom,
                legendShape: BoxShape.circle,
                // showLegends: false,
                showLegendsInRow: true,
              ),
            ),
            const Text(
              "Disc pie chart",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            PieChart(
              dataMap: data,
              chartType: ChartType.ring,
              animationDuration: const Duration(
                milliseconds: 2500,
              ),
              ringStrokeWidth: 20,
              centerText: "Total of money spent",
              chartValuesOptions: const ChartValuesOptions(
                // showChartValues: false,
                showChartValuesInPercentage: true,
              ),
              legendOptions: const LegendOptions(
                legendShape: BoxShape.rectangle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Disc pie chart",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
