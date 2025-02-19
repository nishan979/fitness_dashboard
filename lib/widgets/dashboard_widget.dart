import 'package:fitness_dashboard/widgets/activity_details_card.dart';
import 'package:fitness_dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const SizedBox(height: 18,),
        const HeaderWidget(),
        const SizedBox(height: 18,),
        const ActivityDetailsCard(),
      ],
    );
  }
}