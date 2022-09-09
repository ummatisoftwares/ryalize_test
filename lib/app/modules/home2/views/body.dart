import 'package:flutter/material.dart';
import 'package:test/app/modules/home2/views/components/Btn.dart';
import 'package:test/app/modules/home2/views/components/LocationTextField.dart';
import 'package:test/app/modules/home2/views/components/NormalTextField.dart';
import 'package:test/app/modules/home2/views/components/PhoneTextField.dart';
import 'package:test/app/modules/home2/views/components/SelectTextField.dart';
import 'package:test/app/modules/home2/views/components/dateTextField.dart';

Center body(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          normalTextField(context, "Full Name", "Your Full name"),
          selectTextField(context, "Select Your Gender"),
          dateTextField(context, "Choose Your Date of Birth"),
          phoneTextField(context, "Phone Number", "XXXXXXXXXX"),
          locationTextField(context, "Current Location*"),
          nextBtn(context),
        ],
      ),
    ),
  );
}