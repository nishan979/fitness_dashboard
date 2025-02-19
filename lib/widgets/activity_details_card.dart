import 'package:fitness_dashboard/data/health_details.dart';
import 'package:flutter/material.dart';

import 'custom_card_widget.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
      crossAxisSpacing: 15,
      mainAxisSpacing: 12.0),
      itemBuilder: (context, index) => CustomCard(
        child: Container(),
      ),
    );
  }
}

///####### 13.23 second
