import 'package:flutter/material.dart';
import 'package:test_project/screens/header.dart';

class StatistisWidget extends StatefulWidget {
  const StatistisWidget({super.key});

  @override
  State<StatistisWidget> createState() => _StatistisWidgetState();
}

class _StatistisWidgetState extends State<StatistisWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const HeaderWidget(),
                
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(2, 4),
                          color: Color.fromRGBO(182, 161, 192, 0.11),
                          blurRadius: 10.8,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  child: const Text('Нет данных'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
