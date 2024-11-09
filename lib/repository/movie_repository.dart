import 'package:mvvm_statemanagements/models/movie_genre_model.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';
import 'package:mvvm_statemanagements/service/api_service.dart';

class MovieRepository {
  final ApiService _apiService;
  MovieRepository(this._apiService);
  Future<List<MovieModel>> fetchMovies({int page = 1}) async {
    return await _apiService.fetchMovies(page: page);
  }

  Future<List<MoviesGenre>> fetchGenres() async {
    return await _apiService.fetchGenres();
  }
}
