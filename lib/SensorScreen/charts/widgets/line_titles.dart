import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        //Bottom Title Objects
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22, //Bottom Space
          getTextStyles: (value) => TextStyle(
            color: kBgColor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return "MAR";

              case 5:
                return "JUNE";
              case 8:
                return "SEPT";
              case 10:
                return "OCT";
              case 16:
                return "DEC";
            }
            return '';
          },
          margin: 8,
        ),

        //Left Side Title Objects
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => TextStyle(
            color: kBgColor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return "2.54";

              case 3:
                return "5.00";
              case 5:
                return "9.21";
              case 7:
                return "12.00";
            }
            return '';
          },
          reservedSize: 28, //Bottom Space
          margin: 12,
        ),
      );
}
