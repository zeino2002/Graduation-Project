import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/widget/custom_notify.dart';
import 'widget/custom_filter.dart';
import 'widget/custom_handman.dart';
import 'widget/custom_txt_home.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //CustomNotify (icon: Icons.arrow_forward),
                IconButton (
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Handle arrow back icon press
                    // For example, you can navigate back to the previous screen
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomFilter(),
                    CustomTxtHome(hintText: ''),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '"data"',
                      style: txtstyle,
                    ),
                    Text(
                      ' نتائج ل',
                      style: txtstyle1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: HandMan(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
