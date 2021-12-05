import 'package:movie_view_bloc/data_sources/api_services.dart';
import 'package:movie_view_bloc/model/cast.dart';
import 'package:movie_view_bloc/model/movie.dart';

class Reposotory {
  final ApiServices _apiServices = ApiServices();

  Future<List<Movie>> fetchAllMovie() => _apiServices.fetchMovieList();

  
}
