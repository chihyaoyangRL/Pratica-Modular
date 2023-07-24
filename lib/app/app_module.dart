import 'package:modular_ex/app/modules/pagea/pagea_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:modular_ex/app/app_widget.dart';
import 'package:modular_ex/app/modules/home/home_module.dart';
import 'modules/pageb/pageb_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  //Gerenciar as routas, add quando tem novo page
  //e para utilizar Modular.to.pushNamed('/pageb');
  @override
  List<ModularRouter> get routers => [
        //load module
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/pagea', module: PageaModule()),
        ModularRouter('/pageb', module: PagebModule()),
      ];

  //Principal(MaterialApp)
  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
