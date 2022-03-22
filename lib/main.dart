import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rice_disease_detection/Pages/splash.dart';
import 'package:rice_disease_detection/Pages/home.dart';
import 'package:rice_disease_detection/Pages/diseases.dart';
import 'package:rice_disease_detection/Pages/selected_disease.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
      .then((_) => runApp(MaterialApp(
                                      initialRoute: '/',
                                      routes: {
                                                '/': (context) => const splash(),
                                            '/home': (context) => const home(),
                                            '/diseases': (context) => const disease(),
                                            '/selected': (context) => const selected_disease(),

                                              },
                                      )
                          ),
            );

}



