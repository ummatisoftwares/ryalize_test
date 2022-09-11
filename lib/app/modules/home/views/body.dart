import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/routes/app_pages.dart';


SizedBox body(BuildContext context) {
  bool isScreenWide = MediaQuery.of(context).size.width >= 600;
  return SizedBox(
    width: double.infinity,
    height: MediaQuery.of(context).size.height* 0.8,
    child: Flex(
      direction: isScreenWide? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        service(img: "helper.png", text: "Want to see UI\nClick here", btnText: "See UI", btnColor: const Color(0xFF79C5C7)),
        service(img: "job.png", text: "Want to check RestFul APIs\nClick here", btnText: "RestFul APIs", btnColor: const Color(0xFFE3A47B)),
      ],
    ),
  );
}

Expanded service({required String img, required String text, required String btnText, required Color btnColor}) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/$img", height: 100,),
        const SizedBox(height: 18, width: 300),
        Text(text, textAlign: TextAlign.center,),
        const SizedBox(height: 12,),
        SizedBox(
          width: 160,
          height: 40,
          child: ElevatedButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(btnColor),
                elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {return 0.0;}),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), side: BorderSide(color: btnColor)))
            ),
            onPressed: ()=> btnText == "See UI"? Get.toNamed(Routes.HOME2) : Get.toNamed(Routes.HOME4),
            child: Text(btnText),
          ),
        )
      ],
    ),
  );
}