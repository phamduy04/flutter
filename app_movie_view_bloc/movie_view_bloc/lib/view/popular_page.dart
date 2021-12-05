import 'package:flutter/material.dart';
import 'package:movie_view_bloc/blocs/movie_list_bloc.dart';
import 'package:movie_view_bloc/model/movie.dart';
import 'package:movie_view_bloc/providers/movie_list_provider.dart';
import 'package:movie_view_bloc/resources/widget/popular_item.dart';
import 'package:provider/provider.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  final MovieListBloc movieListBloc = MovieListBloc();
  @override
  void initState() {
    super.initState();
    movieListBloc.putMovieListBloc();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    movieListBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final movieList = Provider.of<List<Movie>>(context);

    return movieList != null
        ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20),
            itemCount: movieList.length,
            itemBuilder: (context, index) {
              Movie movie = movieList[index];
              return PopularItem(movie: movie);
            })
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
