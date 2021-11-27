import 'package:app_movie_view_provider/model/movie.dart';
import 'package:flutter/cupertino.dart';

class MovieListProvider with ChangeNotifier {
  List<Movie> movieList = [];

  updateMovieListProvider({required List<Movie> movieList}) {
    this.movieList = movieList;
    print('length movieList:' + movieList.length.toString());
    //notifyListeners();
  }
}
