import 'package:mobx/mobx.dart';
import 'package:mobx_estudos_flutter/mobx5/models/item_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: "Item 1", check: true),
    ItemModel(title: "Item 2", check: false),
    ItemModel(title: "Item 3", check: false),
  ].asObservable();

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @computed
  int get totalChecked => listItems.where((item) => item.check).length;

  @computed
  ObservableList<ItemModel> get listFiltered {
    if (filter.isEmpty) {
      return listItems;
    } else {
      return listItems.where((item) => item.title.contains(filter)).toList();
    }
  }

  @observable
  String filter = '';

  @action
  setFilter(String value) => filter = value;

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
