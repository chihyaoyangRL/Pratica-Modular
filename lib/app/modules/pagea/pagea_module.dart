import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_ex/app/modules/pagea/pagea_controller.dart';
import 'pagea_page.dart';

class PageaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PageaController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PageaPage(), transition: TransitionType.leftToRightWithFade),
      ];

  static Inject get to => Inject<PageaModule>.of();
}
