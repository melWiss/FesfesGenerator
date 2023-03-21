import 'package:build/src/builder/build_step.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:expensya_annotations/expensya_annotations.dart';
import 'package:expensya_gen/src/visitors/expensya_visitor.dart';
import 'package:source_gen/source_gen.dart';

class ExpensyaGenerator extends GeneratorForAnnotation<ExpensyaRepo> {

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    var visitor = ExpensyaVisitor();
    element.visitChildren(visitor);
    var buffer = StringBuffer();
    var instanceName = visitor.className!.toLowerCase();
    buffer.writeln("// this is a comment");
    buffer.writeln("// CLASS: ${visitor.className}");
    buffer.writeln("\$init (${visitor.className} $instanceName) {");
    visitor.fields.forEach((key, value) {
      if(value.contains("String")) buffer.writeln(" $instanceName.$key = '';");
      else if(value.contains("bool")) buffer.writeln(" $instanceName.$key = true;");
      else if(value.contains("int")) buffer.writeln(" $instanceName.$key = 100;");
    });
    buffer.writeln("}");
    return buffer.toString();
  }

}