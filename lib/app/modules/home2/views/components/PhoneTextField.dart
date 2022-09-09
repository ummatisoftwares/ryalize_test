import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home2/controllers/home2_controller.dart';

Container phoneTextField(BuildContext context, String headLine, String hint) {
  Home2Controller controller = Get.find();
  return Container(
    width: 400,
    margin: const EdgeInsets.fromLTRB(16,20,16,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headLine, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700, letterSpacing:0.6)),
        SizedBox(height: 12, width: MediaQuery.of(context).size.width,),
        Obx(
              ()=> Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              border: Border.all(width: 1.0, color: Colors.black26,),
            ),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  SizedBox(
                    width: 65,
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isExpanded: false,
                          onChanged: (newValue) {controller.selectPhoneCode(newValue.toString());},
                          value: controller.selectedPhoneCode.value,
                          items: controller.phoneCodes.map((selectedType) {
                            return DropdownMenuItem(
                              value: selectedType,
                              child: Text(selectedType),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  const VerticalDivider(color: Colors.black26, thickness: 0.8,),
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
