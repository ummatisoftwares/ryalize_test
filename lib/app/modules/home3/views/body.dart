import 'package:flutter/material.dart';
import 'package:test/app/modules/home3/views/components/Btn.dart';
import 'package:test/app/modules/home3/views/components/LongTextField.dart';
import 'package:test/app/modules/home3/views/components/NormalTextField.dart';
import 'package:test/app/modules/home3/views/components/ServiceTextField.dart';
import 'package:test/app/modules/home3/views/components/multiTextField.dart';

Center body(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          normalTextField(context, "Occupation", "Add your occupation"),
          normalTextField(context, "Company", "Add your company name"),
          multiTextField(context, "Fluently spoken language(s)*"),
          serviceDropDownTextField(context, "Preferred Service"),
          longTextField(context, "Tell us about you*", "Provide some brief about yourself, so helper can get to know you a little better"),
          nextBtn(context),
        ],
      ),
    ),
  );
}