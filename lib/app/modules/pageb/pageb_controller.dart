import 'dart:math';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_ex/app/modules/home/home_controller.dart';

part 'pageb_controller.g.dart';

@Injectable()
class PagebController = _PagebControllerBase with _$PagebController;

abstract class _PagebControllerBase with Store {
  @observable
  String text = 'AKFPCOSckap29571DJa@%&IT';

  @action
  void change() {
    final _random = new Random();
    var list = [
      'AKCHS',
      'MCHSOD',
      'PFKAKD',
      'ALF9s7a',
      'akkD&43',
      '#(AKFsa',
      'AKD9cs',
      'saaiZIS',
      'DKAOS87',
      'SAAkfiosa'
    ];
    this.text = list[_random.nextInt(list.length)];
  }

  @action
  void decrement() {
    //Para usar outro controller ↓
    Modular.get<HomeController>().value--;
  }
}
