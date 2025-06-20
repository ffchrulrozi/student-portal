import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 50),
          child: FormBuilder(
            key: controller.key,
            child: Column(
              spacing: 20,
              children: [
                FormBuilderTextField(
                  name: 'name',
                  decoration: InputDecoration(labelText: "Name"),
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required()]),
                ),
                FormBuilderRadioGroup(
                  name: 'sex',
                  decoration: InputDecoration(
                      labelText: "Sex", border: InputBorder.none),
                  initialValue: 'Male',
                  options: ['Male', 'Female']
                      .map((sex) =>
                          FormBuilderFieldOption(value: sex, child: Text(sex)))
                      .toList(),
                ),
                FormBuilderDateTimePicker(
                  name: 'birthDate',
                  decoration: InputDecoration(labelText: "Birth Date"),
                  inputType: InputType.date,
                  format: DateFormat('yyyy-MM-dd'),
                ),
                FormBuilderDropdown(
                  name: 'religion',
                  decoration: InputDecoration(labelText: "Religion"),
                  initialValue: controller.religions.first,
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
                  items: controller.provinces
                      .map((province) => DropdownMenuItem(
                          value: province, child: Text(province.name ?? "")))
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
                  initialValue: controller.cities.isNotEmpty
                      ? controller.cities[0].name
                      : null,
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
