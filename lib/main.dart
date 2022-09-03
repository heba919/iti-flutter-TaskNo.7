import 'package:flutter/material.dart';

import 'Welcome.dart';

void main() {
  runApp(
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.pinkAccent
        ),
           home: welcome(),
  )
  );
}

