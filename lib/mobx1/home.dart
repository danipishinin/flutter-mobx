import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_estudos_flutter/mobx1/controller.dart';

class Mobx1 extends StatefulWidget {
  @override
  _Mobx1State createState() => _Mobx1State();
}

class _Mobx1State extends State<Mobx1> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(builder: (_) {
              return Text(
                'Você clicou ${controller.counter} vezes',
                style: Theme.of(context).textTheme.headline4,
              );
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
