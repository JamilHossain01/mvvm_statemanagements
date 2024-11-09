import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstant {
  static String apiKey = dotenv.get('MOVIES_API_KEY');
  static String bearerToken = dotenv.get('BASE_URL_TOKEN');

  static const String baseUrl = 'https://api.themoviedb.org/3';
  static Map<String, String> get headers => {
        'Authorizatiion': 'Bearer $bearerToken',
        'Accept': 'application/json',
      };
}
