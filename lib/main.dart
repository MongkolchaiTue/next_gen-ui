// Copyright 2023 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart'; // Add this import
import 'package:window_size/window_size.dart';

// import 'styles.dart';                             // Remove 'styles.dart' import
import 'title_screen/title_screen.dart'; // Add this import

void main() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowMinSize(const Size(800, 500));
  }
  Animate.restartOnHotReload = true; // Add this line
  runApp(const NextGenApp());
}

class NextGenApp extends StatelessWidget {
  const NextGenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      home: const TitleScreen(), // Replace with this widget
      // home: Scaffold(
      //   body: Center(
      //     child: Text(
      //       'Insert Next-Generation UI Here...',
      //       style: TextStyles.h2,
      //     ),
      //   ),
      // ),
    );
  }
}
