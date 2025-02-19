import 'package:fitness_dashboard/model/health_model.dart';

class HealthDetails {
  final healthData = const [
    HealthModel(icon: 'assets/icons/burn.png', value: '305', title: "Calories burned"),
    HealthModel(icon: 'assets/icons/steps.png', value: '10,000', title: "Steps taken"),
    HealthModel(icon: 'assets/icons/distance.png', value: '7km', title: "Distance"),
    HealthModel(icon: 'assets/icons/sleep.png', value: '7h 48m', title: "Sleep"),
  ];
}
