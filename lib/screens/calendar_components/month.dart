import 'package:flutter/material.dart';

class MonthWidget extends StatelessWidget {
  final String month;
  final List<List<int>> days;

  const MonthWidget({super.key, required this.month, required this.days});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 112,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month,
                style: const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(76, 76, 105, 1)),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7
                ),
                itemCount: days.length * 7,
                itemBuilder: (context, index) {
                  int row = index ~/ 7;
                  int col = index % 7;
                  return Container(
                    margin: const EdgeInsets.all(2),
                    child: Center(
                      child: Text(
                        days[row][col] != 0 ? days[row][col].toString() : '',
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(76, 76, 105, 1)
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
