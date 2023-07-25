import 'package:getstudents/studentsData.dart';

import 'httpClient.dart';

class PostStudents {
  static Future<StudentsData> saveStudent(
      String firstName, String lastName, String course, int score) async {
    // data mibayast yek json object pass bede vali az unjai ke mA NEMITUNIM DAR code jeson pass bedfim pass ye Map ijad mikonim
    final response =
        await HttpClient.instanceOfDio.post('experts/student', data: {
      "first_name": firstName,
      "last_name": lastName,
      "course": course,
      "score": score,
    });
    if (response.statusCode == 200) {
      return StudentsData.fromJson(response.data);
    } else {
      throw Exception();
    }
  }
}
