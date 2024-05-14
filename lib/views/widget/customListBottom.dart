import 'package:flutter/material.dart';

import '../../core/constent.dart';

class customlistviewbottom extends StatefulWidget {
  const customlistviewbottom({
    super.key,
    required this.ServiceNames,
  });

  final List ServiceNames;

  @override
  State<customlistviewbottom> createState() => _customlistviewbottomState();
}

class _customlistviewbottomState extends State<customlistviewbottom> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true,
        scrollDirection: Axis.horizontal,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: widget.ServiceNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Container(
                width: 70,
                // height: 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: _selectedIndex == index ? kcolor1 : background),
                child: Center(
                  child: Text(
                    widget.ServiceNames[index],
                    style: txtstyle66,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
