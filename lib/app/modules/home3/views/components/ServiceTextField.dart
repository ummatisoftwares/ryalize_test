import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home3/controllers/home3_controller.dart';

Container serviceDropDownTextField(BuildContext context, String headLine) {
  Home3Controller controller = Get.find();
  return Container(
    width: 400,
    margin: const EdgeInsets.fromLTRB(16,20,16,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headLine, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700, letterSpacing:0.6)),
        SizedBox(height: 12, width: MediaQuery.of(context).size.width,),
        Obx( () => Container(
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(width: 1.0, color: Colors.black26,),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              onChanged: (newValue) {controller.selectedService(newValue.toString());},
              value: controller.selectedService.value,
              items: controller.services.map((selectedType) {
                return DropdownMenuItem(
                  value: selectedType,
                  child: Text(selectedType),
                );
              }).toList(),
            ),
          ),
        )
        ),
      ],
    ),
  );
}
