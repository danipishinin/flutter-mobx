import 'package:mobx/mobx.dart';
import 'package:mobx_estudos_flutter/mobx3/models/client.dart';
part 'controller4.g.dart';

class Controller4 = _ControllerBase4 with _$Controller4;

abstract class _ControllerBase4 with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  // ignore: missing_return
  String validateName() {
    if (client.name == null || client.name.isEmpty)
      return "Este campo é obrigatório";
  }

  // ignore: missing_return
  String validateEmail() {
    if (client.email == null || client.email.isEmpty)
      return "Este campo é obrigatório";
  }

  dispose() {}
}
