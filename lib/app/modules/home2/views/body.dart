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
          Container(
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            width: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 36,
                      child: Image.asset("assets/helper.png"),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 240,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            border: Border.all(width: 1.0, color: Colors.black26,),/**/
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Add Profile Photo", style: TextStyle(fontSize: 16),),
                                Icon(Icons.add_circle_outline),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                            padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                            child: const Text("Add a profile to make it more personal.\nIt makes a difference", style: TextStyle(color: Colors.black54, fontSize: 12),)
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Divider(color: Colors.black87, thickness: 0.6,),
                SizedBox(height: 6,),
                Divider(color: Colors.black87, thickness: 0.6,)
              ],
            ),
          ),
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