import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:interview/common/colors.dart';

class ChartGraph extends StatefulWidget {
  const ChartGraph({super.key});

  @override
  State<ChartGraph> createState() => _ChartGraphState();
}

class _ChartGraphState extends State<ChartGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: LineChart(
        LineChartData(
          borderData: FlBorderData(
            show: false,
          ),
          maxX: 9,
          maxY: 6,
          backgroundColor: background,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(2, 1),
                const FlSpot(3, 3),
                const FlSpot(4, 4),
                const FlSpot(5, 2),
                const FlSpot(6, 5),
                const FlSpot(7, 3),
                const FlSpot(8, 4),
                const FlSpot(9, 2),
              ],
              isCurved: true,
              color: lightblue,
              barWidth: 3,
              dotData: FlDotData(
                show: false,
              ),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(2, 2),
                const FlSpot(3, 4),
                const FlSpot(4, 5),
                const FlSpot(5, 3),
                const FlSpot(6, 4),
                const FlSpot(7, 5),
                const FlSpot(8, 3),
                const FlSpot(9, 4),
              ],
              isCurved: true,
              color: buttonColor,
              barWidth: 3,
              dotData: FlDotData(
                show: false,
              ),
            )
          ],
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              drawBelowEverything: false,
            ),
            topTitles: AxisTitles(
              drawBelowEverything: false,
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  // Return your custom Y-axis labels here
                  switch (value.toInt()) {
                    case 1:
                      return Text(
                        '5',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    case 2:
                      return Text(
                        '10',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    case 3:
                      return Text(
                        '15',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    case 4:
                      return Text(
                        '20',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    case 5:
                      return Text(
                        '25',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    case 6:
                      return Text(
                        '30',
                        style: TextStyle(
                          color:
                              whiteColor, // Change this color to your desired color
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      );
                    default:
                      return Text('');
                  }
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                getTitlesWidget: (value, meta) {
                  switch (value.toInt()) {
                    case 0:
                      return const Text(
                        'Jan',
                        style: TextStyle(
                            color: greenColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      );
                    case 1:
                      return const Text(
                        'Feb',
                        style: TextStyle(color: Colors.white),
                      );
                    case 2:
                      return const Text(
                        'Mar',
                        style: TextStyle(color: Colors.white),
                      );
                    case 3:
                      return const Text(
                        'Apr',
                        style: TextStyle(color: Colors.white),
                      );
                    case 4:
                      return const Text(
                        'May',
                        style: TextStyle(color: Colors.white),
                      );
                    case 5:
                      return const Text(
                        'Jun',
                        style: TextStyle(color: Colors.white),
                      );
                    case 6:
                      return const Text(
                        'Jul',
                        style: TextStyle(color: Colors.white),
                      );
                    case 7:
                      return const Text(
                        'Aug',
                        style: TextStyle(color: Colors.white),
                      );
                    case 8:
                      return const Text(
                        'Sep',
                        style: TextStyle(color: Colors.white),
                      );
                    case 9:
                      return const Text(
                        'Oct',
                        style: TextStyle(color: Colors.white),
                      );
                    case 10:
                      return const Text(
                        'Nov',
                        style: TextStyle(color: Colors.white),
                      );
                    case 11:
                      return const Text(
                        'Dec',
                        style: TextStyle(color: Colors.white),
                      );

                    default:
                      return const Text('');
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
