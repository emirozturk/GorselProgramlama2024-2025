import 'package:proje_frontend/models/user.dart';

class UserWithSimiliarities {
  User user;
  double similarityScore;
  UserWithSimiliarities({required this.user, required this.similarityScore});
}
