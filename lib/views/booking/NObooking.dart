import 'package:flutter/material.dart';
import 'package:khedma_tech/core/constent.dart';
import 'package:khedma_tech/views/booking/farward2.dart';
import 'package:khedma_tech/views/booking/refusedbooking.dart';
import 'completebooking.dart';

class NoBooking extends StatefulWidget {
  const NoBooking({super.key});

  @override
  State<NoBooking> createState() => _NoBookingState();
}

class _NoBookingState extends State<NoBooking>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 2, // Set initial index to the rightmost tab
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text(
              'الحجوزات',
              style: txtstyle2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TabBar(
            labelStyle: txtstyletab,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: background,
            labelColor: kcolor1,
            indicatorColor: kcolor1,
            dividerColor: kcolor1,
            controller: _tabController,
            isScrollable: true,
            indicator: const BoxDecoration(
              border: Border(bottom: BorderSide(color: kcolor1, width: 2)),
            ),
            tabs: const [
              Tab(
                text: 'الملغية',
              ),
              Tab(
                text: 'المكتملة',
              ),
              Tab(
                text: 'القادمة',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                RefusedBooking(),
                CompleteBooking(),
                FarwardBooking2(),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
