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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12.0),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 4),
              child: Text(
                healthDetails.healthData[index].value,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              healthDetails.healthData[index].title,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

///####### 13.23 second
