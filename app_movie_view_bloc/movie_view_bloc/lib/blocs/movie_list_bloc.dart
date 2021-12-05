import 'package:movie_view_bloc/data_sources/repostitory.dart';
import 'package:movie_view_bloc/model/movie.dart';
import 'package:rxdart/rxdart.dart';

class MovieListBloc {
  final _repositore = Reposotory();
  final movieListSubject = PublishSubject<List<Movie>>();
  putMovieListBloc() async {
    List<Movie> movieList = await _repositore.fetchAllMovie();
    movieListSubject.sink.add(movieList);
  }

  Stream<List<Movie>> get movieListStream => movieListSubject.stream;

  // close stream //
  dispose() {
    movieListSubject.close();
  }
}
