
import 'package:flutter/material.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';

InputDecoration personalNameBox({required double width,required labelText,required hintText})
{
  return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: primaryColor,
              width:  width*0.0050
          )
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: primaryColor,
              width:  width*0.0050
          )
      ),focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
          color: primaryColor,
          width:  width*0.0060
      )
  )
  );
}


