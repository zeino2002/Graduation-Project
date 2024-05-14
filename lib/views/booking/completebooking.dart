import 'package:flutter/material.dart';
import '../../core/constent.dart';
import '../Rate & Review/widget/customratingRewie.dart';
import 'widget/CustomRowBokking.dart';
import 'widget/Customtextrow2.dart';
import 'widget/button2.dart';
import 'widget/customVisibleContainer.dart';

class CompleteBooking extends StatefulWidget {
  const CompleteBooking({super.key});

  @override
  _CompleteBookingState createState() => _CompleteBookingState();
}

class _CompleteBookingState extends State<CompleteBooking> {
  bool isVisible = false;

  List<bool> itemExpandedList = List.generate(10, (index) => false);
  void Visability(int index) {
    setState(() {
      itemExpandedList[index] = !itemExpandedList[index];
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                margin: const EdgeInsets.only(left: 2, right: 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 0.8,
                      ),
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    children: [
                      CustomRowBokking(
                        text: 'مكتمله',
                        backgroundColor: Colors.green,
                        width: 60,
                      ),
                      const Divider(
                        thickness: 2,
                        color: kbook,
                      ),
                      if (itemExpandedList[index])
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Customtextrow2(
                                  txt1: 'سعر المعاينة',
                                  txt2: '٥٠ ج.م (للمعاينة)',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Customtextrow2(
                                  txt1: 'العنوان ',
                                  txt2: '١٢ شارع الجيش\n كفر-الشيخ',
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                custombutton2(
                                  backgroundColor: kcolor1,
                                  onPressed: () {},
                                  text: 'قيم الخدمة',
                                ),
                                SizedBox(
                                  width: 200,
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                    ),
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return const RatingRewie();
                                    },
                                  ),
                                ),
                                const Divider(
                                  thickness: 2,
                                  color: kbook,
                                ),
                              ],
                            ),
                          ),
                        ),
                      GestureDetector(
                        onTap: () => Visability(index),
                        child: customVisibleContainer(isVisible: isVisible),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
