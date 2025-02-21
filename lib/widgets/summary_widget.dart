import 'package:fitness_dashboard/widgets/pie_chart_widget.dart';
import 'package:fitness_dashboard/widgets/scheduled_widget.dart';
import 'package:fitness_dashboard/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Chart(),
          Text("Summary", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SummaryDetails(),
          ),
          SizedBox(height: 40,),
          Scheduled(),
        ],
      ),
    );
  }
}