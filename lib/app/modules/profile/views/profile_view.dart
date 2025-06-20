import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:student_portal/app/modules/profile/views/widgets/navbar_popup_menu_widget.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          actions: [NavbarPopupMenuWidget(controller)],
        ),
        body: controller.isGetDataLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 50),
                child: FormBuilder(
                  key: controller.key,
                  child: Column(
                    spacing: 20,
                    children: [
                      FormBuilderTextField(
                        name: 'name',
                        initialValue: controller.profile.name,
                        decoration: InputDecoration(labelText: "Name"),
                        validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required()]),
                      ),
                      FormBuilderRadioGroup(
                        name: 'sex',
                        decoration: InputDecoration(
                            labelText: "Sex", border: InputBorder.none),
                        initialValue: controller.profile.sex,
                        options: ['Male', 'Female']
                            .map((sex) => FormBuilderFieldOption(
                                value: sex, child: Text(sex)))
                            .toList(),
                      ),
                      FormBuilderDateTimePicker(
                        name: 'birthDate',
                        initialValue: controller.profile.birthdate,
                        decoration: InputDecoration(labelText: "Birth Date"),
                        inputType: InputType.date,
                        format: DateFormat('yyyy-MM-dd'),
                      ),
                      FormBuilderDropdown(
                        name: 'religion',
                        decoration: InputDecoration(labelText: "Religion"),
                        initialValue: controller.profile.religion,
                        items: controller.religions
                            .map(
                              (religion) => DropdownMenuItem(
                                value: religion,
                                child: Text(religion),
                              ),
                            )
                            .toList(),
                      ),
                      FormBuilderDropdown(
                        name: 'province',
                        decoration: InputDecoration(labelText: "Province"),
                        initialValue: controller.provinces
                            .where((x) => x.name == controller.profile.province)
                            .firstOrNull,
                        items: controller.provinces
                            .map((province) => DropdownMenuItem(
                                value: province,
                                child: Text(province.name ?? "")))
                            .toList(),
                        onChanged: (value) => controller.getCities(value!.id),
                      ),
                      FormBuilderDropdown(
                        name: 'city',
                        decoration: InputDecoration(labelText: "City"),
                        items: controller.cities
                            .map((city) => DropdownMenuItem(
                                value: city.name, child: Text(city.name ?? "")))
                            .toList(),
                        initialValue: controller.cities
                            .where((x) => x.name == controller.profile.city)
                            .firstOrNull
                            ?.name,
                      ),
                      ElevatedButton(
                          onPressed: () => controller.takeImage(),
                          child: Text("Take Image")),
                      ElevatedButton(
                          onPressed: () => controller.updateData(),
                          child: Text("Save"))
                    ],
                  ),
                ),
              ),
      );
    });
  }
}
