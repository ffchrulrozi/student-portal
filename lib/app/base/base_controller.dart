import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:student_portal/app/data/api/api_service.dart';

class BaseController extends GetxController {
  final apiSvc = ApiService();

  final Env env = Env(
    baseHostUrl: dotenv.env["BASE_HOST_URL"]!,
    baseApiUrl: dotenv.env["BASE_API_URL"]!,
  );
}

class Env {
  late String baseHostUrl;
  late String baseApiUrl;

  Env({required this.baseHostUrl, required this.baseApiUrl});
}
