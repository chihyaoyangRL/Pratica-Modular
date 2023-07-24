import 'package:modular_ex/utils/PageTransition.dart';
import 'pageb_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pageb_page.dart';

class PagebModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PagebController,
      ];

  @override
  List<ModularRouter> get routers => [
        //Para passar em parametro ↓
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => PagebPage(args.data),
          transition: TransitionType.custom,
          customTransition: myCustomTransition,
        ),
      ];

  static Inject get to => Inject<PagebModule>.of();
}
