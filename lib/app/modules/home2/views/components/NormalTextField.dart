import 'package:flutter/material.dart';

Container normalTextField(BuildContext context, String headLine, String hint) {
  return Container(
    width: 400,
    margin: const EdgeInsets.fromLTRB(16,20,16,0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(headLine, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700, letterSpacing:0.6)),
        SizedBox(height: 12, width: MediaQuery.of(context).size.width,),
        TextFormField(
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0),),
              borderSide: BorderSide(color: Color(0xFF79C5C7), width: 2),
            ),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),),
                borderSide: BorderSide(color: Colors.black26)
            ),
            hintText: hint,
            // errorBorder:
            //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
            // focusedErrorBorder:
            //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
            // errorStyle: TextStyle(color: Colors.purple),
          ),
          validator: (value) {
            if (value!.length < 4) {
              return 'Enter at least 4 characters';
            } else {
              return null;
            }
          },
          //maxLength: 1,
          //onSaved: (value) => setState(() => username = value),
        ),
      ],
    ),
  );
}