/// Support for doing something awesome.
///
/// More dartdocs go here.
library expensya_gen;

import 'package:build/build.dart';
import 'package:expensya_gen/src/generators/expensya_generator.dart';
import 'package:source_gen/source_gen.dart';

export 'src/expensya_gen_base.dart';

// TODO: Export any libraries intended for clients of this package.

Builder expensyaGenExample (BuilderOptions options) => PartBuilder(
      [ExpensyaGenerator()],
      ".example.dart",
      options: options,
    );
