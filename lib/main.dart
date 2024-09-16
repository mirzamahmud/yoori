import 'package:flutter/material.dart';
import 'package:yoori/core/dependency_inject/dependency_injection_helper.dart';
import 'package:yoori/my_app.dart';
import 'package:yoori/utils/app_utils/app_utils.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  AppUtils.systemUIOverlay();
  AppUtils.deviceOrientation();
  DependencyInjectionHelper.initDependency();
  runApp(const MyApp());
}