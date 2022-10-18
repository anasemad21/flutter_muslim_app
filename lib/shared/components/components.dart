
import 'package:flutter/material.dart';

void NavigatTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);