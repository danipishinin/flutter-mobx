import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_estudos_flutter/mobx5/home_controller.dart';
import 'package:mobx_estudos_flutter/mobx5/item.dart';
import 'package:mobx_estudos_flutter/mobx5/models/item_model.dart';

class Mobx5 extends StatefulWidget {
  @override
  _Mobx5State createState() => _Mobx5State();
}

class _Mobx5State extends State<Mobx5> {
  final controller = HomeController();

  void _dialog() {
    var model = ItemModel();
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text('Adicionar item'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Novo Item'),
            ),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  controller.addItem(model);
                  Navigator.pop(context);
                },
                child: Text('Salvar'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancelar'),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setFilter,
          decoration: InputDecoration(hintText: "Pesquisa..."),
        ),
        actions: [
          IconButton(
              icon: Observer(
                builder: (_) {
                  return Text('${controller.totalChecked}');
                },
              ),
              onPressed: () {})
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listFiltered.length,
          itemBuilder: (_, index) {
            var item = controller.listFiltered[index];
            return ItemWidget(
              item: item,
              removeCliked: () {
                controller.removeItem(item);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
