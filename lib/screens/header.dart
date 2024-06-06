import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:test_project/screens/calendar.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String _formattedTime = '';
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _initializeDateFormatting();
    _startTimer();
  }

  Future<void> _initializeDateFormatting() async {
    await initializeDateFormatting('ru_RU', null);
    setState(() {
      _formattedTime = _getCurrentTime();
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _formattedTime = _getCurrentTime();
      });
    });
  }

  String _getCurrentTime() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('d MMMM HH:mm', 'ru_RU');
    return formatter.format(now);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  bool _isMoodDiaryPressed = true;
  bool _isStatisticsPressed = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 335,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 102),
                  child: Text(_formattedTime,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 188, 188, 191),
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        useSafeArea: true,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        context: context,
                        builder: (context) => CalendartWidget());
                  },
                  child: SvgPicture.asset(
                    'assets/icons/Мои сессии.svg',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
              width: 288,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 242, 242, 242),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 172,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isMoodDiaryPressed = true;
                          _isStatisticsPressed = false;
                        });
                        context.go('/mood_diary');
                      },
                      style: ButtonStyle(
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 17),
                        ),
                        textStyle:
                            const WidgetStatePropertyAll<TextStyle>(TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        )),
                        foregroundColor: _isMoodDiaryPressed
                            ? const WidgetStatePropertyAll<Color>(Colors.white)
                            : const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(188, 188, 191, 1)),
                        backgroundColor: _isMoodDiaryPressed
                            ? const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(255, 135, 2, 1))
                            : const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(242, 242, 242, 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/icons/diary.svg',
                              colorFilter: _isMoodDiaryPressed
                                  ? const ColorFilter.mode(
                                      Colors.white, BlendMode.srcIn)
                                  : const ColorFilter.mode(
                                      Color.fromRGBO(188, 188, 191, 1),
                                      BlendMode.srcIn),
                              width: 12,
                              height: 12),
                          const Text(
                            'Дневник настроения',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 116,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isMoodDiaryPressed = false;
                          _isStatisticsPressed = true;
                        });
                        context.go('/statistics');
                      },
                      style: ButtonStyle(
                        padding: const WidgetStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 17),
                        ),
                        textStyle:
                            const WidgetStatePropertyAll<TextStyle>(TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                        )),
                        foregroundColor: _isStatisticsPressed
                            ? const WidgetStatePropertyAll<Color>(Colors.white)
                            : const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(188, 188, 191, 1)),
                        backgroundColor: _isStatisticsPressed
                            ? const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(255, 135, 2, 1))
                            : const WidgetStatePropertyAll<Color>(
                                Color.fromRGBO(242, 242, 242, 1)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/icons/statistic.svg',
                              colorFilter: _isStatisticsPressed
                                  ? const ColorFilter.mode(
                                      Colors.white, BlendMode.srcIn)
                                  : const ColorFilter.mode(
                                      Color.fromRGBO(188, 188, 191, 1),
                                      BlendMode.srcIn),
                              width: 12,
                              height: 12),
                          const Text(
                            'Статистика',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
