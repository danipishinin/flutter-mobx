import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_estudos_flutter/mobx3/controller3.dart';
import 'package:provider/provider.dart';

class Mobx3 extends StatefulWidget {
  @override
  _Mobx3State createState() => _Mobx3State();
}

class _Mobx3State extends State<Mobx3> {
  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller3>(context);
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Observer(builder: (_) {
            return _textField(
                errorText: controller.validateName,
                labelText: "name",
                onChanged: controller.client.changeName);
          }),
          SizedBox(
            height: 20,
          ),
          Observer(builder: (_) {
            return _textField(
                errorText: controller.validateEmail,
                labelText: "email",
                onChanged: controller.client.changeEmail);
          }),
          Observer(builder: (_) {
            return MaterialButton(
              onPressed: controller.isValid ? () {} : null,
              child: Text("Salvar"),
            );
          })
        ],
      ),
    );
  }
}
