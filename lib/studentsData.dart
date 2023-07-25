class StudentsData {
  final int id;
  final String firstName;
  final String lastName;
  final String cours;
  final int score;
  final String createdAt;
  final String createdUp;

  StudentsData(this.id, this.firstName, this.lastName, this.cours, this.score,
      this.createdAt, this.createdUp);
//  parsing json to StudentsData
  StudentsData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        firstName = json['first_name'],
        lastName = json['last_name'],
        cours = json['course'],
        score = json['score'],
        createdAt = json['created_at'],
        createdUp = json['updated_at'];
}
