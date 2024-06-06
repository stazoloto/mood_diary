import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_project/screens/mood_diary_components/feelings.dart';
import 'package:test_project/screens/header.dart';
import 'package:test_project/screens/mood_diary_components/more_feelings.dart';
import 'package:test_project/screens/mood_diary_components/notes.dart';
import 'package:test_project/screens/mood_diary_components/self_assessment.dart';
import 'package:test_project/screens/mood_diary_components/stress_level.dart';

class MoodDiaryWidget extends StatefulWidget {
  const MoodDiaryWidget({super.key});

  @override
  State<MoodDiaryWidget> createState() => _MoodDiaryWidgetState();
}

class _MoodDiaryWidgetState extends State<MoodDiaryWidget> {
  bool _isFieldVisible = false;

  void receiveFieldVisible(bool isFieldVisible) {
    setState(() {
      _isFieldVisible = isFieldVisible;
    });
  }

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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Что чувствуешь?',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                FeelingsWIdget(
                  isFieldVisible: receiveFieldVisible,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: AnimatedContainer(
                      // Animate the field container based on _isFieldVisible
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.easeInOut,
                      height: _isFieldVisible == true
                          ? 150
                          : 0, // Adjust height based on visibility
                      child: const Row(
                        children: [
                          MoreFeelingsWidget(),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 36,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Уровень стресса',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const StressLevelWidget(),
                const SizedBox(
                  height: 36,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Самооценка',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SelfAssessmentWidget(),
                const SizedBox(
                  height: 36,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Заметки',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const NotesWidget(),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              content: Text(
                                'Успешно сохранено',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            );
                          });
                    },
                    style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color.fromRGBO(255, 135, 2, 1)),
                    ),
                    child: const Text(
                      'Сохранить',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
