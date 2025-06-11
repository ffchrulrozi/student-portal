import 'package:get/get.dart';

import '../modules/daily_report/bindings/daily_report_binding.dart';
import '../modules/daily_report/views/daily_report_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/others/bindings/others_binding.dart';
import '../modules/others/views/others_view.dart';
import '../modules/presence/bindings/presence_binding.dart';
import '../modules/presence/views/presence_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/schedule/bindings/schedule_binding.dart';
import '../modules/schedule/views/schedule_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/study_plan/bindings/study_plan_binding.dart';
import '../modules/study_plan/views/study_plan_view.dart';
import '../modules/transcript/bindings/transcript_binding.dart';
import '../modules/transcript/views/transcript_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_REPORT,
      page: () => const DailyReportView(),
      binding: DailyReportBinding(),
    ),
    GetPage(
      name: _Paths.PRESENCE,
      page: () => const PresenceView(),
      binding: PresenceBinding(),
    ),
    GetPage(
      name: _Paths.SCHEDULE,
      page: () => const ScheduleView(),
      binding: ScheduleBinding(),
    ),
    GetPage(
      name: _Paths.TRANSCRIPT,
      page: () => const TranscriptView(),
      binding: TranscriptBinding(),
    ),
    GetPage(
      name: _Paths.STUDY_PLAN,
      page: () => const StudyPlanView(),
      binding: StudyPlanBinding(),
    ),
    GetPage(
      name: _Paths.OTHERS,
      page: () => const OthersView(),
      binding: OthersBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
