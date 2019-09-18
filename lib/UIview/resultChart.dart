import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:iub_app/models/data.dart';
import '../AppTheme.dart';

class ResultChart extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;


  const ResultChart({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      AspectRatio(
                       // padding: const EdgeInsets.only(left: 24, right: 24,top: 16, bottom: 16),
                        aspectRatio: 1.70,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xff232d37),

                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: FintnessAppTheme.grey.withOpacity(0.4),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child:Padding(
                            padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
                            child: FlChart(
                              chart: LineChart(
                                LineChartData(
                                  gridData: FlGridData(
                                    show: true,
                                    drawHorizontalGrid: true,
                                    getDrawingVerticalGridLine: (value) {
                                      return const FlLine(
                                        color: Color(0xff37434d),
                                        strokeWidth:  1,
                                      );
                                    },
                                    getDrawingHorizontalGridLine: (value) {
                                      return const FlLine(
                                        color: Color(0xff37434d),
                                        strokeWidth: 1,
                                      );
                                    },
                                  ),
                                  titlesData: FlTitlesData(
                                    show: true,
                                    bottomTitles: SideTitles(
                                      showTitles: true,
                                      reservedSize: 22,
                                      textStyle: TextStyle(
                                          color: const Color(0xff68737d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16
                                      ),
                                      getTitles: (value) {
                                        switch(value.toInt()) {
                                          case 0: return '1';
                                          case 1: return '2';
                                          case 2: return '3';
                                          case 3: return '4';
                                          case 4: return '5';
                                          case 5: return '6';
                                          case 6: return '7';
                                        }

                                        return '';
                                      },
                                      margin: 8,
                                    ),
                                    leftTitles: SideTitles(
                                      showTitles: true,
                                      textStyle: TextStyle(
                                        color: const Color(0xff67727d),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      getTitles: (value) {
                                        switch(value.toInt()) {
                                          case 1: return '1.00';
                                          case 2: return '2.00';
                                          case 3: return '3.00';
                                          case 4: return '4.00';
                                        }
                                        return '';
                                      },
                                      reservedSize: 25,
                                      margin: 8,
                                    ),
                                  ),
                                  borderData: FlBorderData(
                                      show: true,
                                      border: Border.all(color: Color(0xff37434d), width:1)
                                  ),
                                  minX: 0,
                                  maxX: semester.toDouble(),
                                  minY: 0,
                                  maxY: 4,
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: [
                                        FlSpot(0, 2.9),
                                        FlSpot(1,3.7),
                                        FlSpot(2, 2.5),
                                        FlSpot(3, 4),
                                        FlSpot(4, 1.3),
                                        FlSpot(5, 3),
                                        FlSpot(6, 4),

                                      ],
                                      isCurved: true,
                                      colors: gradientColors,
                                      barWidth: 2,
                                      isStrokeCapRound: true,
                                      dotData: FlDotData(
                                        show: false,
                                      ),
                                      belowBarData: BelowBarData(
                                        show: true,
                                        colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
