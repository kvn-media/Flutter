import 'package:http/http.dart';


const String apiKey = '<935c9e52b0c4894062378d2e7a945a1f>';
const String apiId = '<6b07fd42>';
const String apiUrl = '<https://api.edamam.com/api/recipes/v2?type=public&q=Chicken&app_id=6b07fd42&app_key=935c9e52b0c4894062378d2e7a945a1f&field=uri>';

class RecipeService {
  // 1
  Future getData(String url) async {
    // 2
    print('Calling url: $url');
    // 3
    final response = await get(Uri.parse(url));
    // 4
    if (response.statusCode == 200) {
      // 5
      return response.body;
    } else {
      // 6
      print(response.statusCode);
    }
  }
  // 1
  Future<dynamic> getRecipes(String query, int from, int to) async {
    // 2
    final recipeData = await getData(
        '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    // 3
    return recipeData;
  }

}

