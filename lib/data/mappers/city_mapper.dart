import 'package:flutter_clean_architecture/domain/entities/city_entity.dart';

class CityMapper {
  List<City> toDomainList(response) {
    final cities = <City>[];

    final results = response["rajaongkir"]["results"];
    results?.forEach((city) {
      cities.add(City(
          id: city["city_id"] ?? "0",
          name: city["city_name"] ?? "",
          provinceId: city["province_id"] ?? "0",
          province: city["province"] ?? "",
          type: city["type"] ?? "",
          postalCode: city["postal_code"] ?? ""));
    });

    return cities;
  }
}
