import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:student_portal/app/base/base_controller.dart';
import 'package:student_portal/app/data/api/models/province.dart' as province;
import 'package:student_portal/app/data/api/models/city.dart' as city;
import 'package:student_portal/app/modules/profile/models/profile_update_response.dart';

class ProfileController extends BaseController {
  final key = GlobalKey<FormBuilderState>();
  final isLoading = false;
  final religions = [
    "Islam",
    "Katolik",
    "Protestan",
    "Hindu",
    "Buddha",
    "Konghuchu"
  ];
  var provinces = <province.Datum>[];
  var cities = <city.Datum>[];
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  @override
  void onInit() {
    super.onInit();
    getProvinces();
  }

  Future<void> getProvinces() async {
    var response = await apiSvc.get(
      endPoint: '/master-province',
      fromJson: (data) => province.Province.fromJson(data),
    );

    provinces = response.data!.data!;
    update();
  }

  Future<void> getCities(int? provinceId) async {
    if (provinceId != null) {
      var response = await apiSvc.get(
        endPoint: '/master-city',
        params: {"province_id": provinceId},
        fromJson: (data) => city.City.fromJson(data),
      );

      cities = response.data!.data!;
      update();
    }
  }

  void takeImage() async {
    _image = await _picker.pickImage(source: ImageSource.gallery);
  }

  void updateData() async {
    final form = key.currentState;
    if (form != null && form.saveAndValidate()) {
      var data = {
        "name": form.value["name"],
        "sex": form.value["sex"],
        "birthDate": form.value["birthDate"],
        "religion": form.value["religion"],
        "province": (form.value["province"] as province.Datum).name!,
        "city": form.value["city"],
      };

      Map<String, XFile> files = {};
      if (_image != null) {
        files = {"photo": _image!};
      }

      var response = await apiSvc.post(
        endPoint: "/studentportal-profile",
        data: data,
        files: files,
        fromJson: (data) => ProfileUpdateResponse.fromJson(data),
      );

      if (response.statusCode == 200) {
        Get.snackbar("Success", response.data!.message ?? "");
      } else {
        Get.snackbar("Error", response.message ?? "");
      }
    }
  }
}
