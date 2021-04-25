import 'package:dartplus/dartplus.dart';

main() async {
  final result = await login("vicky");

  if (result.isLeft)
    print("Failure : ${result.left?.error}");
  else
    print("Success : Logged in as ${result.right?.name}");
}

Future<Either<AppError, User>> login(String username) async {
  await Future.delayed(Duration(seconds: 2));
  if (username.length < 6) return left(AppError(error: "Invalid Username!"));
  return right(User(name: username));

  // You can implement a try/catch bloc with real login
  // If login success return right(User)
  // If login fails return left(AppError)
}

class User {
  String name;

  User({
    required this.name,
  });
}

class AppError {
  String error;

  AppError({
    required this.error,
  });
}
