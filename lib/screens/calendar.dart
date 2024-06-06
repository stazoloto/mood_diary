import 'package:flutter/material.dart';
import 'package:test_project/screens/calendar_components/month.dart';

class CalendartWidget extends StatelessWidget {
  CalendartWidget({super.key});

  final List<Map<String, dynamic>> months = [
    {
      'month': 'Январь',
      'days': [
        [0, 0, 0, 0, 1, 2, 3],
        [4, 5, 6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15, 16, 17],
        [18, 19, 20, 21, 22, 23, 24],
        [25, 26, 27, 28, 29, 30, 31],
      ],
    },
    {
      'month': 'Февраль',
      'days': [
        [1, 2, 3, 4, 5, 6, 7],
        [8, 9, 10, 11, 12, 13, 14],
        [15, 16, 17, 18, 19, 20, 21],
        [22, 23, 24, 25, 26, 27, 28],
        [29, 30, 0, 0, 0, 0, 0],
      ],
    },
    {
      'month': 'Март',
      'days': [
        [0, 0, 0, 0, 1, 2, 3],
        [4, 5, 6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15, 16, 17],
        [18, 19, 20, 21, 22, 23, 24],
        [25, 26, 27, 28, 29, 30, 31],
      ],
    },
    {
      'month': 'Апрель',
      'days': [
        [1, 2, 3, 4, 5, 6, 7],
        [8, 9, 10, 11, 12, 13, 14],
        [15, 16, 17, 18, 19, 20, 21],
        [22, 23, 24, 25, 26, 27, 28],
        [29, 30, 0, 0, 0, 0, 0],
      ],
    },
    {
      'month': 'Май',
      'days': [
        [0, 0, 1, 2, 3, 4, 5],
        [6, 7, 8, 9, 10, 11, 12],
        [13, 14, 15, 16, 17, 18, 19],
        [20, 21, 22, 23, 24, 25, 26],
        [27, 28, 29, 30, 31, 0, 0],
      ],
    },
    {
      'month': 'Июнь',
      'days': [
        [0, 0, 0, 0, 0, 1, 2],
        [3, 4, 5, 6, 7, 8, 9],
        [10, 11, 12, 13, 14, 15, 16],
        [17, 18, 19, 20, 21, 22, 23],
        [24, 25, 26, 27, 28, 29, 30],
      ],
    },
    {
      'month': 'Июль',
      'days': [
        [1, 2, 3, 4, 5, 6, 7],
        [8, 9, 10, 11, 12, 13, 14],
        [15, 16, 17, 18, 19, 20, 21],
        [22, 23, 24, 25, 26, 27, 28],
        [29, 30, 31, 0, 0, 0, 0],
      ]
    },
    {
      'month': 'Август',
      'days': [
        [0, 0, 0, 1, 2, 3, 4],
        [5, 6, 7, 8, 9, 10, 11],
        [12, 13, 14, 15, 16, 17, 18],
        [19, 20, 21, 22, 23, 24, 25],
        [26, 27, 28, 29, 30, 31, 0],
      ],
    },
    {
      'month': 'Сентябрь',
      'days': [
        [0, 0, 0, 0, 0, 0, 1],
        [2, 3, 4, 5, 6, 7, 8],
        [9, 10, 11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20, 21, 22],
        [23, 24, 25, 26, 27, 28, 29],
        [30, 0, 0, 0, 0, 0, 0],
      ],
    },
    {
      'month': 'Октябрь',
      'days': [
        [0, 1, 2, 3, 4, 5, 6],
        [7, 8, 9, 10, 11, 12, 13],
        [14, 15, 16, 17, 18, 19, 20],
        [21, 22, 23, 24, 25, 26, 27],
        [28, 29, 30, 31, 0, 0, 0],
        
      ],
    },
    {
      'month': 'Ноябрь',
      'days': [
        [0, 0, 0, 0, 1, 2, 3],
        [4, 5, 6, 7, 8, 9, 10],
        [11, 12, 13, 14, 15, 16, 17],
        [18, 19, 20, 21, 22, 23, 24],
        [25, 26, 27, 28, 29, 30, 0],
      ],
    },
    {
      'month': 'Декабрь',
      'days': [
        [0, 0, 0, 0, 0, 0, 1],
        [2, 3, 4, 5, 6, 7, 8],
        [9, 10, 11, 12, 13, 14, 15],
        [16, 17, 18, 19, 20, 21, 22],
        [23, 24, 25, 26, 27, 28, 29],
        [30, 31, 0, 0, 0, 0, 0],
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    int year = now.year;

    return Container(
        color: const Color.fromRGBO(255, 253, 252, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                height: 52,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 25,
                        color: Color.fromRGBO(188, 188, 191, 1),
                      ),
                    ),
                    const Text('Сегодня',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(188, 188, 191, 1))),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                year.toString(),
                style: const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(76, 76, 105, 1)),
              ),
              const SizedBox(
                height: 26,
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 35,
                      mainAxisSpacing: 35,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: months.length,
                    itemBuilder: (context, index) {
                      return MonthWidget(
                          month: months[index]['month'],
                          days: List<List<int>>.from(months[index]['days']));
                    }),
              )
            ],
          ),
        ));
  }
}
