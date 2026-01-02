part of 'model.dart';

enum Matties {
  pj('ppj'),
  bramC('Broemst'),
  bramT('Taelman'),
  stijn('Stijn'),
  eline('Eline'),
  linde('Lindsey'),
  robbert('Robèrt'),
  anuki('Anuki'),
  dries('Dries'),
  eva('Eva'),
  hanne('Hanne'),
  jente('Jente'),
  matthias('Chouki'),
  michael('Mikkels'),
  robbe('Robbe'),
  sarah('Sarah'),
  thomas('Thomaconda'),
  ;

  const Matties(this.name);

  final String name;

  static Matties fromString(String name) =>
      Matties.values.firstWhere((element) => element.name == name);

  static List<BasielUser> users() => Matties.values
      .map((m) => BasielUser(id: '${m.index}', name: m.name))
      .toList();
}
