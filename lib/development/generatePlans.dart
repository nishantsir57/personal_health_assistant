import 'package:personal_health_assistant/Constants.dart';
class GeneratePlans
{
  Future<void> generatePlans()async
  {
    int weight=int.parse(Constants.weight);
    int target=int.parse(Constants.targetWeight);
    if(target > weight)
      {
        Constants.diet=Constants.weightGainDiet;
        Constants.exercise=Constants.weightGainExercise;
      }
    else
      {
        Constants.diet=Constants.weightLossDiet;
        Constants.exercise=Constants.weightLossExercise;
      }
    return;
  }
}