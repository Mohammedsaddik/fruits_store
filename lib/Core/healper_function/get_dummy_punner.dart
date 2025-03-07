import 'package:fruits_store/Core/Entites/Punner_Entity/punner_entity.dart';

PunnerEntity getDummyPunner() {
  return PunnerEntity(
    namePunnerOne: "Text 1",
    namePunnerTwo: "text 2",
    imageUrl: null,
  );
}

List<PunnerEntity> getDummyPunners() {
  return [
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
    getDummyPunner(),
  ];
}
