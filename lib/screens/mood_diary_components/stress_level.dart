import 'package:flutter/material.dart';

class StressLevelWidget extends StatefulWidget {
  const StressLevelWidget({super.key});

  @override
  State<StressLevelWidget> createState() => _StressLevelWidgetState();
}

class _StressLevelWidgetState extends State<StressLevelWidget> {
  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 20),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            height: 8,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return Container(
                    width: 2,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(225, 221, 216, 1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                })),
          ),
          Expanded(
            child: SizedBox(
              width: 370,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: const Color.fromRGBO(255, 135, 2, 1),
                    inactiveTrackColor: const Color.fromRGBO(225, 221, 216, 1),
                    trackHeight: 6,
                    thumbShape: CustomSliderThumb()),
                child: Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    }),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 22),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Низкий',
                  style: TextStyle(
                      color: Color.fromRGBO(145, 158, 171, 1),
                      fontSize: 11,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Высокий',
                  style: TextStyle(
                      color: Color.fromRGBO(145, 158, 171, 1),
                      fontSize: 11,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomSliderThumb extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(24.0, 24.0); // Размер бегунка
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;
    Path thumbPath = Path()
      ..addOval(Rect.fromCircle(center: center, radius: 12.0));
    canvas.drawShadow(
        thumbPath, const Color.fromRGBO(182, 161, 192, 0.11), 4.0, true);

    // Рисуем белый круг
    final Paint outerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, 12.0, outerPaint);

    // Рисуем оранжевый круг внутри белого
    final Paint innerPaint = Paint()
      ..color = const Color.fromRGBO(255, 135, 2, 1)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, 7.0, innerPaint);
  }
}
