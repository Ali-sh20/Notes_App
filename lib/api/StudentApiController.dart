import 'dart:convert';
import 'package:notes_app/Preferences/student_prefernces.dart';
import 'package:notes_app/Utills/helpers.dart';
import 'package:notes_app/models/Students.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api_settings.dart';

class StudentApiController with Helpers {
  Future<bool> login(BuildContext context,
      {required String email, required String password}) async {
    var url = Uri.parse(ApiSettings.LOGIN);
    var response = await http.post(url, body: {
      'email': email,
      'password': password,
    });

    if (response.statusCode < 400) {
      var jsonResponse = jsonDecode(response.body);
      Student student = Student.fromJson(jsonResponse['object']);
      await StudentPreferences().save(student);
      return true;
    } else if (response.statusCode != 500) {
      showMessage(context,
          message: jsonDecode(response.body)['message'], error: true);
    } else {
      showMessage(context,
          message: 'Something went wrong, please try again!', error: true);
    }
    return false;
  }
}
