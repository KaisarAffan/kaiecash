class PersonModel {
  // task model itu struktur data column2 nya
  int? id;
  String name;
  String bankAccount;
  String initial;

  PersonModel({
    this.id,
    required this.name,
    required this.bankAccount,
    required this.initial,
  });

  // Convert a Task object into a Map object
  // untuk inserting data ke database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'bankAccount': bankAccount,
      'initial': initial,
    };
  }

  // Convert a Map object into a Task object
  // dari database ke UI dalam bentuk object
  factory PersonModel.fromMap(Map<String, dynamic> map) {
    return PersonModel(
      id: map['id'],
      name: map['name'],
      bankAccount: map['bankAccount'].toString(),
      initial: map['initial'],
    );
  }
}
