// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller2.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller2 on ControllerBase2, Store {
  Computed<String> _$nomeCompletoComputed;

  @override
  String get nomeCompleto =>
      (_$nomeCompletoComputed ??= Computed<String>(() => super.nomeCompleto,
              name: 'ControllerBase2.nomeCompleto'))
          .value;

  final _$nomeAtom = Atom(name: 'ControllerBase2.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$sobrenomeAtom = Atom(name: 'ControllerBase2.sobrenome');

  @override
  String get sobrenome {
    _$sobrenomeAtom.reportRead();
    return super.sobrenome;
  }

  @override
  set sobrenome(String value) {
    _$sobrenomeAtom.reportWrite(value, super.sobrenome, () {
      super.sobrenome = value;
    });
  }

  final _$ControllerBase2ActionController =
      ActionController(name: 'ControllerBase2');

  @override
  dynamic changeName(String newName) {
    final _$actionInfo = _$ControllerBase2ActionController.startAction(
        name: 'ControllerBase2.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$ControllerBase2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeSobrenome(String newLastName) {
    final _$actionInfo = _$ControllerBase2ActionController.startAction(
        name: 'ControllerBase2.changeSobrenome');
    try {
      return super.changeSobrenome(newLastName);
    } finally {
      _$ControllerBase2ActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
sobrenome: ${sobrenome},
nomeCompleto: ${nomeCompleto}
    ''';
  }
}
