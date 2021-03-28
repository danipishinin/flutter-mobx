import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_estudos_flutter/mobx3/controller3.dart';
import 'package:mobx_estudos_flutter/mobx3/home.dart';
import 'package:provider/provider.dart';

class Mobx03 extends StatefulWidget {
  @override
  _Mobx03State createState() => _Mobx03State();
}

class _Mobx03State extends State<Mobx03> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller3>(context);
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
