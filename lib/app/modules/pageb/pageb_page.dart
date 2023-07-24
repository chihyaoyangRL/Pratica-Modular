import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_ex/app/modules/home/home_controller.dart';
import 'pageb_controller.dart';

class PagebPage extends StatefulWidget {
  dynamic valu;

  PagebPage(this.valu);

  @override
  _PagebPageState createState() => _PagebPageState();
}

class _PagebPageState extends ModularState<PagebPage, PagebController> {
  //Para usar outro controller ↓
  final hController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Valor Home: ' + hController.value.toString()),
          ),
          body: ColorfulSafeArea(
              color: Colors.white.withOpacity(0.7),
              overflowRules: OverflowRules.all(true),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(child: Text(controller.text)),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30), child: Divider(color: Colors.grey)),
                  Center(child: Text('Valor em parametro: ' + widget.valu.toString())),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30), child: Divider(color: Colors.grey)),
                  Center(
                    child: RaisedButton(
                      onPressed: () => controller.decrement(),
                      child: Text('Decrementar'),
                    ),
                  )
                ],
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.change(),
            child: Icon(Icons.refresh),
          ),
        );
      },
    );
  }
}
