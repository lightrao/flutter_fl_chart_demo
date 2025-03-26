import 'package:flutter/material.dart';
import 'widgets/pie_chart_sample.dart';
import 'widgets/line_chart_sample.dart';
import 'widgets/bar_chart_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FL Chart Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChartHomePage(),
    );
  }
}

class ChartHomePage extends StatefulWidget {
  const ChartHomePage({super.key});

  @override
  State<ChartHomePage> createState() => _ChartHomePageState();
}

class _ChartHomePageState extends State<ChartHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FL Chart Samples'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.pie_chart), text: 'Pie Chart'),
            Tab(icon: Icon(Icons.bar_chart), text: 'Bar Chart'),
            Tab(icon: Icon(Icons.show_chart), text: 'Line Chart'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: PieChartSample(),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: BarChartSample(),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: LineChartSample(),
          ),
        ],
      ),
    );
  }
}