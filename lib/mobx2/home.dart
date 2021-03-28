import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_estudos_flutter/mobx2/controller2.dart';

class Mobx2 extends StatefulWidget {
  @override
  _Mobx2State createState() => _Mobx2State();
}

class _Mobx2State extends State<Mobx2> {
  Controller2 controller = Controller2();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.changeName,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.changeSobrenome,
            ),
            Observer(
              builder: (_) {
                return Text('${controller.nomeCompleto}');
              },
            )
          ],
        ),
      ),
    );
  }
}
