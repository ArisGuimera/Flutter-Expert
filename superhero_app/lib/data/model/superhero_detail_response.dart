class SuperheroDetailResponse {
  final String id;
  final String name;
  final String url;
  final String realName;
  final PowerStatsResponse powerStatsResponse;

  SuperheroDetailResponse(
      {required this.id,
      required this.name,
      required this.url,
      required this.realName,
      required this.powerStatsResponse});

  factory SuperheroDetailResponse.fromJson(Map<String, dynamic> json) {
    return SuperheroDetailResponse(
        id: json["id"],
        name: json["name"],
        url: json["image"]["url"],
        realName: json["biography"]["full-name"],
        powerStatsResponse: PowerStatsResponse.fromJson(json["powerstats"]));
  }
}

class PowerStatsResponse {
  final String intelligence;
  final String strength;
  final String speed;
  final String durability;
  final String power;
  final String combat;

  PowerStatsResponse(
      {required this.intelligence,
      required this.strength,
      required this.speed,
      required this.durability,
      required this.power,
      required this.combat});

  factory PowerStatsResponse.fromJson(Map<String, dynamic> json) {
    return PowerStatsResponse(
        combat: json["combat"],
        intelligence: json["intelligence"],
        strength: json["strength"],
        speed: json["speed"],
        durability: json["durability"],
        power: json["power"]);
  }
}
