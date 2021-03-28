import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_estudos_flutter/mobx3/home.dart';
import 'package:mobx_estudos_flutter/mobx4/controller4.dart';

class Mobx04 extends StatefulWidget {
  @override
  _Mobx03State createState() => _Mobx03State();
}

class _Mobx03State extends State<Mobx04> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller4>();
    return Scaffold(
      appBar: (AppBar(
        // ignore: missing_return
        title: Observer(builder: (_) {
          return Text(controller.isValid
              ? 'Formulário validado'
              : 'Formulário invalidado');
        }),
      )),
      body: Mobx3(),
    );
  }
}
