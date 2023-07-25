import "package:getstudents/studentsData.dart";
import "package:getstudents/httpClient.dart";

class GetStudents {
  Future<List<StudentsData>> getStudents() async {
    final response = await HttpClient.instanceOfDio.get('experts/student');
    final List<StudentsData> students = [];
    if (response.data is List<dynamic>) {
      (response.data as List<dynamic>).forEach((element) {
        students.add(StudentsData.fromJson(element));
      });
    }

    return students;
  }
}
