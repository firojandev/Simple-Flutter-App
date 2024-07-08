import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workflow/data/service/service.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

import 'app/my_app.dart';

void main() {
  runZonedGuarded(() {

    initService();

    Bloc.observer = TalkerBlocObserver();

    runApp(const MyApp());

  }, (error, stack) {
    debugPrint("Error $error");
  });
}
