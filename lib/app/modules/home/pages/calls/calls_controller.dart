import 'package:mobx/mobx.dart';

import 'models/calls_list_models.dart';

part 'calls_controller.g.dart';

class CallsController = _CallsControllerBase with _$CallsController;

abstract class _CallsControllerBase with Store {
  final List<CallListItem> callListItem = [
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/82614383_2716249885097419_3396061057905590272_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_ohc=vnnyB8GH9QAAX_PcP8I&_nc_ht=scontent.fssa7-1.fna&oh=167bc2a94c8f7809c3b2fe9980ea56aa&oe=5F08E134",
      personName: "Lauri",
      date: "15:00",
      isCall: false,
    ),
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t31.0-8/s960x960/15384461_1197935906928832_2098159937534331287_o.jpg?_nc_cat=102&_nc_sid=7aed08&_nc_ohc=OOCO7w6GbKgAX9JYYYk&_nc_ht=scontent.fssa7-1.fna&_nc_tp=7&oh=af9481ae99d4acad9293b57d915ebaa2&oe=5F099127",
      personName: "Olivinha",
      date: "15:00",
      isCall: true,
    ),
    CallListItem(
      profileUrl:
          "https://scontent.fssa7-1.fna.fbcdn.net/v/t1.0-9/1390664_574299812625781_1675278015_n.jpg?_nc_cat=106&_nc_sid=7aed08&_nc_ohc=Ov48Gn-WxyQAX8SNOfu&_nc_ht=scontent.fssa7-1.fna&oh=102d48ec806604a84894c16ff43594b5&oe=5F0A2BB2",
      personName: "Laau Oliveira",
      date: "15:00",
      isCall: true,
    ),
  ];
}
