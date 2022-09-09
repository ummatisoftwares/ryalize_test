import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home2/controllers/home2_controller.dart';

Container dateTextField(BuildContext context, String headLine) {
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
              ()=> TextField(
            onTap: ()=> controller.chooseDate(),
            readOnly: true,
            controller: controller.dateController.value,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),),
                borderSide: BorderSide(color: Color(0xFF79C5C7), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0),),
                  borderSide: BorderSide(color: Colors.black26)
              ),
              hintText: "DD/MM/YYYY",
              suffixIcon: Icon(Icons.calendar_month_outlined),
            ),
          ),
        ),
      ],
    ),
  );
}
