class User {
  String username;
  String password;
  String? phone;
  User({required this.username,required this.password,this.phone}); 
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'phone': phone,
    };
  }
}