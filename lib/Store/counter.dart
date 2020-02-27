import 'package:mobx/mobx.dart';

final counter = Observable(0);

final increment = Action(() {
  counter.value++;
});
