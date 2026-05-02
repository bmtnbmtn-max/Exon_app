class Teacher {
  final String? id;
  final String name;
  final String phone1;
  final String phone2;
  final String subject;
  final String username;
  final String password;
  final bool isFirstLogin;

  Teacher({
    this.id,
    required this.name,
    required this.phone1,
    required this.phone2,
    required this.subject,
    required this.username,
    required this.password,
    this.isFirstLogin = true,
  });

  // 1. Flutter Class එක Database එකට යැවිය හැකි Map එකක් බවට පත් කිරීම
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone1': phone1,
      'phone2': phone2,
      'subject': subject,
      'username': username,
      'password': password,
      'is_first_login': isFirstLogin,
    };
  }

  // 2. Database එකෙන් එන Map එකක් නැවත Flutter Class එකක් බවට පත් කිරීම
  factory Teacher.fromMap(Map<String, dynamic> map, String id) {
    return Teacher(
      id: id,
      name: map['name'] ?? '',
      phone1: map['phone1'] ?? '',
      phone2: map['phone2'] ?? '',
      subject: map['subject'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      isFirstLogin: map['is_first_login'] ?? true,
    );
  }
}
