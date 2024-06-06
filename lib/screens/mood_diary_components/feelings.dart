import 'package:flutter/material.dart';

class FeelingsWIdget extends StatefulWidget {
  final void Function(bool) isFieldVisible;
  FeelingsWIdget({required this.isFieldVisible, super.key});

  @override
  State<FeelingsWIdget> createState() => _FeelingsWIdgetState();
}

class _FeelingsWIdgetState extends State<FeelingsWIdget> {
  final List<Map<String, String>> _yourFeelings = [
    {'feeling': 'Радость', 'image': 'assets/images/happy.png'},
    {'feeling': 'Страх', 'image': 'assets/images/fear.png'},
    {'feeling': 'Бешенство', 'image': 'assets/images/rage.png'},
    {'feeling': 'Грусть', 'image': 'assets/images/sad.png'},
    {'feeling': 'Спокойствие', 'image': 'assets/images/calm.png'},
    {'feeling': 'Сила', 'image': 'assets/images/power.png'},
  ];

  bool _isFeelingPressed = false;
  int _selectedFeelingIndex = -1;
  bool _isFieldVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      child: ListView.builder(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: _yourFeelings.length,
          itemBuilder: (context, index) {
            final feeling = _yourFeelings[index];
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isFeelingPressed = !_isFeelingPressed;
                    _selectedFeelingIndex = index;
                    _isFieldVisible = !_isFieldVisible;
                  });
                  widget.isFieldVisible(_isFieldVisible);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  width: 83,
                  height: 118,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      boxShadow:
                          _isFeelingPressed && _selectedFeelingIndex == index
                              ? null
                              : [
                                  const BoxShadow(
                                    offset: Offset(2, 4),
                                    color: Color.fromRGBO(182, 161, 192, 0.11),
                                    blurRadius: 10.8,
                                    spreadRadius: 0.0,
                                  )
                                ],
                      border:
                          _isFeelingPressed && _selectedFeelingIndex == index
                              ? Border.all(
                                  width: 2,
                                  color: const Color.fromRGBO(255, 135, 2, 1))
                              : null),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        feeling['image']!,
                        width: 53,
                        height: 50,
                      ),
                      Text(
                        feeling['feeling']!,
                        style: const TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
