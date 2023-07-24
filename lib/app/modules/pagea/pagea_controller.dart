import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pagea_controller.g.dart';

@Injectable()
class PageaController = _PageaControllerBase with _$PageaController;

abstract class _PageaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
