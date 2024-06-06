import 'package:flutter/material.dart';

class MoreFeelingsWidget extends StatefulWidget {
  const MoreFeelingsWidget({super.key});

  @override
  State<MoreFeelingsWidget> createState() => _MoreFeelingsWidgetState();
}

class _MoreFeelingsWidgetState extends State<MoreFeelingsWidget> {
  bool _isExcitedPressed = false;
  bool _isEcstaticPressed = false;
  bool _isPlayfulPressed = false;
  bool _isPleasuredPressed = false;
  bool _isCharmPressed = false;
  bool _isAwarenessPressed = false;
  bool _isCouragePressed = false;
  bool _isEnjoymentPressed = false;
  bool _isSensualityPressed = false;
  bool _isEnergyPressed = false;
  bool _isExtravagancePressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isExcitedPressed = !_isExcitedPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isExcitedPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isExcitedPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Возбуждение",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isExcitedPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isEcstaticPressed = !_isEcstaticPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isEcstaticPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isEcstaticPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Восторг",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isEcstaticPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isPlayfulPressed = !_isPlayfulPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isPlayfulPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isPlayfulPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Игривость",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isPlayfulPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isPleasuredPressed = !_isPleasuredPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isPleasuredPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isPleasuredPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Наслаждение",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isPleasuredPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isCharmPressed = !_isCharmPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isCharmPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isCharmPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Очарование",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isCharmPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isAwarenessPressed = !_isAwarenessPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isAwarenessPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isAwarenessPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Осознанность",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isAwarenessPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isCouragePressed = !_isCouragePressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isCouragePressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isCouragePressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Смелость",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isCouragePressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isEnjoymentPressed = !_isEnjoymentPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isEnjoymentPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isEnjoymentPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Удовольствие",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isEnjoymentPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isSensualityPressed = !_isSensualityPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isSensualityPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isSensualityPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Чувственность",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isSensualityPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isEnergyPressed = !_isEnergyPressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isEnergyPressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isEnergyPressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Энергичность",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isEnergyPressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      _isExtravagancePressed = !_isExtravagancePressed;
                    });
                  },
                  style: ButtonStyle(
                      shape:
                          const WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      )),
                      shadowColor: _isExtravagancePressed
                          ? null
                          : const WidgetStatePropertyAll(
                              Color.fromRGBO(182, 161, 192, 0.11)),
                      elevation: const WidgetStatePropertyAll(5),
                      backgroundColor: _isExtravagancePressed
                          ? const WidgetStatePropertyAll(
                              Color.fromRGBO(255, 135, 2, 1))
                          : const WidgetStatePropertyAll(Colors.white)),
                  child: Text("Экстравагантность",
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: _isExtravagancePressed
                            ? Colors.white
                            : const Color.fromRGBO(76, 76, 105, 1),
                      ))),
            ],
          ),
        )
      ],
    );
  }
}
