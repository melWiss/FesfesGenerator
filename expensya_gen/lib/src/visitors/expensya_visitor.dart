

import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/dart/element/element.dart';


class ExpensyaVisitor extends SimpleElementVisitor {

  String? className;
  Map<String, String> fields = {};

  @override
  visitConstructorElement(ConstructorElement element) {
    className = element.returnType.toString();
  }

  @override
  visitFieldElement(FieldElement element) {
    fields.addAll({element.name: element.type.toString()});
  }
}