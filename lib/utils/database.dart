import 'package:mental_health_fitness_ui/constants/assets.dart';
import 'package:mental_health_fitness_ui/constants/strings.dart';
import 'package:mental_health_fitness_ui/models/feeling_model.dart';
import 'package:mental_health_fitness_ui/models/task_model.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';

class DB {
  static List<FeelingModel> feelings() {
    return [
      FeelingModel(
        label: Strings.happy,
        image: Assets.happy,
        color: $styles.colors.violet,
      ),
      FeelingModel(
        label: Strings.calm,
        image: Assets.calm,
        color: $styles.colors.blue,
      ),
      FeelingModel(
        label: Strings.relax,
        image: Assets.relax,
        color: $styles.colors.orange,
      ),
      FeelingModel(
        label: Strings.focus,
        image: Assets.focus,
        color: $styles.colors.blurGreen,
      ),
    ];
  }

  static List<TaskModel> tasks() {
    return [
      TaskModel(
        title: Strings.perGroupMeetup,
        description: Strings.perGroupMeetupDesc,
        begin: Strings.joinNow,
        isReady: true,
        image: Assets.meetupIcon,
        color: $styles.colors.violet,
        backgoundColor: $styles.colors.blurViolet,
      ),
      TaskModel(
        title: Strings.meditation,
        description: Strings.meditationDesc,
        begin: Strings.sixPm,
        isReady: false,
        image: Assets.meditationIcon,
        color: $styles.colors.orange,
        backgoundColor: $styles.colors.blurOrange,
      )
    ];
  }
}
