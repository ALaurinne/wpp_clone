import 'package:mobx/mobx.dart';

import 'models/calls_list_models.dart';

part 'calls_controller.g.dart';

class CallsController = _CallsControllerBase with _$CallsController;

abstract class _CallsControllerBase with Store {
  final List<CallListItem> callListItem = [
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_eui2=AeGIPVwBTx8-SIRV6ZJ1c00x8gZmpI4-y1vyBmakjj7LW6g7w1K3-CpGT2MaBonNisc6kBDAdJ_eUtC4JZlbc1Od&_nc_ohc=LxOycVzQTd0AX8XcQd4&_nc_ht=scontent.fssa7-1.fna&oh=5cb8b4f1c177c940d327ec8551280bbe&oe=5F306E34",
      personName: "Lauri",
      date: "15:00",
      isCall: false,
    ),
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/15384461_1197935906928832_2098159937534331287_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_eui2=AeGnonVApCKvFQhXuMR0OPY9ZBDVkmSuWbFkENWSZK5Zse8-cE3o2UkuOLjliOjm2-NEYDeCw_hJNYnObdGk0GfY&_nc_ohc=-lZim0klGnYAX98Ekdx&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=37e13f50389ba046caac135c55a25e89&oe=5F311E27",
      personName: "Olivinha",
      date: "15:00",
      isCall: true,
    ),
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/14067822_1093847150671042_5073446049279310352_o.jpg?_nc_cat=103&_nc_sid=7aed08&_nc_eui2=AeHEu021D8BxMURqnklE2s0gbepLGNCf97lt6ksY0J_3uaoC6CObUE0gTIlFBVOys4xKfJMje92Pd46jDLsV5eQB&_nc_ohc=vaLGaxJejB0AX8kWMze&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=786acda989fe81ea43acadec0850d15f&oe=5F3350FA",
      personName: "Laau Oliveira",
      date: "15:00",
      isCall: true,
    ),
  ];
}
