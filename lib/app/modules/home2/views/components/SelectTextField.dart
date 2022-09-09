import 'package:flutter/material.dart';
import 'package:test/app/modules/home2/controllers/home2_controller.dart';
import 'package:get/get.dart';

Container selectTextField(BuildContext context, String headLine) {
  Home2Controller controller = Get.find();
  return Container(
    width: 400,
    margin: const EdgeInsets.fromLTRB(16,20,16,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headLine, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700, letterSpacing:0.5),),
        SizedBox(height: 12, width: MediaQuery.of(context).size.width),
        Obx(
              ()=> Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              option("Male", controller.selectedGender.value == "Male"? true : false, controller),
              option("Female", controller.selectedGender.value == "Female"? true : false, controller),
              option("Others", controller.selectedGender.value == "Others"? true : false, controller),
            ],
          ),
        )
      ],
    ),
  );
}

GestureDetector option(String text, bool selected, Home2Controller controller) {
  return GestureDetector(
    onTap: ()=> controller.selectedGender(text),
    child: Container(
      height: 50,
      width: 110,
      decoration: BoxDecoration(
        color: selected? const Color(0xFFE3A47B) : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        border: Border.all(width: 1.0, color: selected? const Color(0xFFE3A47B) : Colors.black26,),
      ),
      child: Center(child: Text(text, style: TextStyle(color: selected? Colors.white : Colors.black54, fontSize: 16, letterSpacing:0.5))),
    ),
  );
}