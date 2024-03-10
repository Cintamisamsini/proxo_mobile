import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic passCheckupJSON(String? pass) {
  var ret = {
    'moreThan8Char': false,
    'hasUppercase': false,
    'hasDigit': false,
    'hasSpecialChar': false,
    'difficulty': 0
  };
  if (pass == null || pass == '') return ret;
  int count = 0;
  if (pass.length >= 8) {
    ret['moreThan8Char'] = true;
    count = 1;
  }
  if (RegExp(r'[A-Z]').hasMatch(pass)) {
    ret['hasUppercase'] = true;
    count++;
  }
  if (RegExp(r'[0-9]').hasMatch(pass)) {
    ret['hasDigit'] = true;
    count++;
  }
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pass)) {
    ret['hasSpecialChar'] = true;
    count++;
  }
  ret['difficulty'] = count;
  return ret;
}

double passCheckupProgress(String? pass) {
  if (pass == null || pass == '') return 0;
  int count = 0;
  if (pass.length >= 8) count = 1;
  if (RegExp(r'[a-z]').hasMatch(pass)) count++;
  if (RegExp(r'[A-Z]').hasMatch(pass)) count++;
  if (RegExp(r'[0-9]').hasMatch(pass)) count++;
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(pass)) count++;
  return (count * 20) / 100;
}
