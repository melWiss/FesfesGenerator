// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}


class ExpensyaRepo {
  final String? example;

  const ExpensyaRepo({this.example});
}


@ExpensyaRepo(example: "something")
class Example{

}