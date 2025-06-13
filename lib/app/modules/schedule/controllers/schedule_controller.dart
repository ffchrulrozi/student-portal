import 'package:collection/collection.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/modules/schedule/models/schedule.dart';

class ScheduleController extends BaseController {
  final Schedule schedule = Schedule(schedules: [
    ScheduleElement(
      subject: "Artificial Intelligence",
      day: "Wednesday",
      time: Time(start: "07:00", end: "08:40"),
      scheduleClass: "A",
      room: "Konoha building, 3rd floor, no. 19",
      lecturer: "Naruto Uzumaki, PhD.",
    ),
    ScheduleElement(
      subject: "Machine Learning",
      day: "Wednesday",
      time: Time(start: "09:00", end: "10:40"),
      scheduleClass: "B",
      room: "Kumo building, 2rd floor, no. 20",
      lecturer: "Dr. Sakura Haruno",
    ),
    ScheduleElement(
      subject: "Data Mining",
      day: "Thursday",
      time: Time(start: "07:00", end: "08:40"),
      scheduleClass: "A",
      room: "Kiri building, 5rd floor, no. 43",
      lecturer: "Sasuke Uciha, S.Pd., M.Si.",
    ),
    ScheduleElement(
      subject: "Pattern Recognition",
      day: "Friday",
      time: Time(start: "14:00", end: "15:40"),
      scheduleClass: "A",
      room: "Naruto building, 3rd floor, no. 19",
      lecturer: "Prof. Kakashi Hatake",
    ),
  ]);

  late Map<String, List<ScheduleElement>> daysx = {};

  void days() {
    final grouped = groupBy<ScheduleElement, String>(
        (schedule.schedules!), (s) => (s.day ?? ""));

    daysx = grouped;
    update();
  }

  @override
  void onReady() {
    super.onReady();
    days();
  }
}
