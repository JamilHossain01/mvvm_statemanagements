import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:mvvm_statemanagements/constants/api_constant.dart';
import 'package:mvvm_statemanagements/models/movie_genre_model.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';

class ApiService {
  Future<List<MovieModel>> fetchMovies({int page = 1}) async {
    final url =
        Uri.parse("${ApiConstant.baseUrl}/movie/popular?language=en-US&page=1");
    final response = await http.get(url, headers: ApiConstant.headers);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // log("data $data");
      return List.from(
          data['results'].map((element) => MovieModel.fromJson(element)));
    } else {
      throw Exception("Failed to load movies: ${response.statusCode}");
    }
  }

  Future<List<MoviesGenre>> fetchGenres() async {
    final url =
        Uri.parse("${ApiConstant.baseUrl}/genre/movie/list?language=en");
    final response = await http.get(url, headers: ApiConstant.headers);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // log("data $data");
      return List.from(
          data['genres'].map((element) => MoviesGenre.fromJson(element)));
    } else {
      throw Exception("Failed to load movies: ${response.statusCode}");
    }
  }
}
