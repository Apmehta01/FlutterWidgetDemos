import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/helperButtonStyles.dart';

class DropDownButtonWidget extends StatefulWidget {
  @override
  State<DropDownButtonWidget> createState() {
    return _DropDownButtonWidget();
  }
}

class _DropDownButtonWidget extends State<DropDownButtonWidget> {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: DropdownButtonFormField2(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.5),
            borderRadius: BorderRadius.circular(10),
          ),
          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),
        isExpanded: true,
        hint: const Text(
          'Select Gender',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        items: genderItems
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return 'Please select gender.';
          }
          return null;
        },
        onChanged: (value) {},
        onSaved: (value) {
          selectedValue = value.toString();
        },
        buttonStyleData: const ButtonStyleData(
          height: 60,
          padding: EdgeInsets.only(left: 20, right: 10),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          iconSize: 30,
        ),
        dropdownStyleData: DropdownStyleData(
          padding: null,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.redAccent,
            ),
            elevation: 8,
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all(6),
              thumbVisibility: MaterialStateProperty.all(true),
            )),
      ),
    );
  }
}
