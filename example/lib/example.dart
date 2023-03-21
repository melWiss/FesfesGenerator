import 'package:expensya_annotations/expensya_annotations.dart';
part 'example.example.dart';


@ExpensyaRepo()
class Example{
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  bool? verif;
  int? numberOfQueries;

  init() => $init(this);
}
