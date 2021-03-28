import 'package:mobx/mobx.dart';
part 'controller2.g.dart';

//flutter pub run build_runner build
class Controller2 = ControllerBase2 with _$Controller2;

abstract class ControllerBase2 with Store {
  @observable
  String nome = '';

  @observable
  String sobrenome = '';

/* concatena mais um observable */
  @computed
  String get nomeCompleto => '$nome $sobrenome';

  @action
  changeName(String newName) {
    nome = newName;
  }

  @action
  changeSobrenome(String newLastName) {
    sobrenome = newLastName;
  }
}
