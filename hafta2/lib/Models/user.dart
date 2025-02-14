class User {
  int id;
  String username;
  String password;
  String? address;
  //User(this.id, this.username, this.password);
  User(
      {required this.id,
      required this.username,
      required this.password,
      this.address});
}
