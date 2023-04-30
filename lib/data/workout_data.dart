import 'package:workout_app/models/exercise.dart';

import '../models/workout.dart';

class WorkoutData {
  List<Workout> workoutList = [
    Workout(
      name: 'Upper body',
      exercises: [
        Exercise(
          name: 'Dicep Curls ',
          weight: '10',
          reps: '10',
          sets: '3',
        )
      ],
    ),
  ];
  List<Workout> getWorkouList() {
    return workoutList;
  }

  void addWorkout(String name) {
    workoutList.add(
      Workout(
        name: name,
        exercises: [],
      ),
    );
  }

  void addExercises(String workoutname, String exerciseName, String weight,
      String reps, String sets) {
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutname);
    relevantWorkout.exercises.add(
      Exercise(
        name: exerciseName,
        weight: weight,
        reps: reps,
        sets: sets,
      ),
    );
  }

  void checkoffExercise(String workoutName, String ExerciseName) {}
  Workout getRelevantWorkout(String workoutName) {
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);
    return relevantWorkout;
  }
}
