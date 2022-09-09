import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/routes/app_pages.dart';

Container nextBtn(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(48, 20, 48, 20),
    width: MediaQuery.of(context).size.width*0.8,
    // width: double.infinity,
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF79C5C7)),
          elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {return 0.0;}),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: const BorderSide(color: Color(0xFF79C5C7))))
      ),
      onPressed: ()=> Get.toNamed(Routes.HOME3),
      child: const Text("Submit"),
    ),
  );
}
