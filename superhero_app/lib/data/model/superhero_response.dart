import 'package:superhero_app/data/model/superhero_detail_response.dart';

class SuperheroResponse {
  final String response;
  final List<SuperheroDetailResponse> result;

  SuperheroResponse({required this.response, required this.result});

  factory SuperheroResponse.fromJson(Map<String, dynamic> json) {
    var list = json["results"] as List;
    List<SuperheroDetailResponse> heroList =
        list.map((hero) => SuperheroDetailResponse.fromJson(hero)).toList();

    return SuperheroResponse(response: json["response"], result: heroList);
  }
}
