import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_estudos_flutter/mobx3/controller3.dart';
import 'package:mobx_estudos_flutter/mobx4/controller4.dart';
import 'package:mobx_estudos_flutter/mobx5/home.dart';
import 'package:provider/provider.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller4>(Controller4());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller3>(
          create: (_) => Controller3(),
          dispose: (_, controler) => controler.dispose(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Mobx5();
  }
}
