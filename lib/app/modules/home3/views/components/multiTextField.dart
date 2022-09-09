import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/home3/controllers/home3_controller.dart';

Container multiTextField(BuildContext context, String headLine) {
  Home3Controller controller = Get.find();
  return Container(
    width: 400,
    margin: const EdgeInsets.fromLTRB(16,20,16,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headLine, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700, letterSpacing:0.6)),
        SizedBox(height: 12, width: MediaQuery.of(context).size.width,),
        TextFormField(
          onTap: (){ controller.showDialog(); },
          controller: controller.languageController.value,
          decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),),
                borderSide: BorderSide(color: Color(0xFF79C5C7), width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0),),
                  borderSide: BorderSide(color: Colors.black26)
              ),
              suffixIcon: Icon(Icons.add_circle_outline),
              suffixIconColor: Colors.amberAccent
          ),
          readOnly: true,
          validator: (value) {
            if (value!.length < 4) {
              return 'Enter at least 4 characters';
            } else {
              return null;
            }
          },
        ),
      ],
    ),
  );
}
