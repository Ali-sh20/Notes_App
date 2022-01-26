

import 'package:notes_app/models/Students.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentPreferences {
  static final StudentPreferences _instance = StudentPreferences._();
  late SharedPreferences _sharedPreferences;

  factory StudentPreferences() {
    return _instance;
  }

  StudentPreferences._();

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future save(Student student) async {
    await _sharedPreferences.setBool('logged_in', true);
    await _sharedPreferences.setInt('id', student.id);
    await _sharedPreferences.setString('full_name', student.fullName);
    await _sharedPreferences.setString('email', student.email);
    await _sharedPreferences.setString('gender', student.gender);
    await _sharedPreferences.setString('token', 'Bearer ' + student.token);
  }

  bool get isLoggedIn => _sharedPreferences.getBool('logged_in') ?? false;

  Student get student {
    Student student = Student();
    student.id = _sharedPreferences.getInt('id') ?? 0;
    student.fullName = _sharedPreferences.getString('full_name') ?? '';
    student.email = _sharedPreferences.getString('email') ?? '';
    student.gender = _sharedPreferences.getString('gender') ?? '';
    return student;
  }

  String get token => _sharedPreferences.getString('token') ?? '';

  Future logout() async {
    await _sharedPreferences.clear();
  }
}
