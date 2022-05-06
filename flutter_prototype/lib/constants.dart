import 'package:flutter/material.dart';

//Button Box Constants
final BTNBOX_PADDING = const EdgeInsets.all(10);

final BTNBOX_MARGIN = const EdgeInsets.only(bottom: 20);

final BTNBOX_DECORATION = 
  BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      const BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(3, 3))
    ]
  );

const double SPACING = 10;
