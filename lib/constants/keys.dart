import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

//keys

GlobalKey<ScaffoldState> materialKey = GlobalKey<ScaffoldState>();


//declare encrypted prefs
final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

//declare Logger
var logger = Logger(filter: null, printer: PrettyPrinter(), output: null);

//declare LocalStorage
const FlutterSecureStorage secureStorage = FlutterSecureStorage();
