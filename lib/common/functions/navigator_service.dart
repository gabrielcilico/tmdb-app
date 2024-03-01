import 'package:flutter_modular/flutter_modular.dart';

void pushReplacementNamed({
  required String routeName,
  arguments,
  bool forRoot = false,
}) {
  Modular.to.pushReplacementNamed(
    routeName,
    arguments: arguments,
    forRoot: forRoot,
  );
}

void pushNamed({
  required String routeName,
  arguments,
}) {
  Modular.to.pushNamed(
    routeName,
    arguments: arguments,
  );
}

void pushNamedAndRemoveUntil({
  required String routeName,
  arguments,
}) {
  Modular.to.pushNamedAndRemoveUntil(
    routeName,
    (_) => true,
    arguments: arguments,
  );
}

void pop() {
  if (Modular.to.canPop()) Modular.to.pop();
}
