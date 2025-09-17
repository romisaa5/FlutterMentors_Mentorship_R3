class UserModel {
  String _name = '';
  int _age = 0;
  String _email = '';


  String get name => _name;
  int get age => _age;
  String get email => _email;


  set name(String value) {
    if (value.isEmpty) throw ArgumentError('Name cannot be empty');
    _name = value;
  }

  set age(int value) {
    if (value < 0) throw ArgumentError('Age cannot be negative');
    _age = value;
  }

  set email(String value) {
    if (!value.contains('@')) throw ArgumentError('Invalid email');
    _email = value;
  }

  void updateUser(String name, int age, String email) {
    this.name = name;
    this.age = age;
    this.email = email;
  }
}

// Separate Firestore logic
class FirestoreService {
  void saveUser(UserModel user) {
    print('Saving ${user.name}, ${user.age}, ${user.email} to Firestore');
  }
}
