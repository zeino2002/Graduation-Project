
import 'package:flutter/material.dart';

import '../../core/constent.dart';

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context)
          .copyWith(trackHeight: 10, overlayColor: Colors.transparent),
      child: RangeSlider(
        inactiveColor: background,
        activeColor: kcolor1,
        values: _currentRangeValues,
        max: 100,
        divisions: 10,
        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}