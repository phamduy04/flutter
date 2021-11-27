import 'package:app_movie_view_provider/model/movie.dart';
import 'package:app_movie_view_provider/provider/movie_list_provider.dart';
import 'package:app_movie_view_provider/widget/popular_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MovieListScren extends StatelessWidget {
  const MovieListScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.amber, Colors.green],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
            title: const Text(
              ' List Movie',
              style: TextStyle(
                  fontFamily: 'Comfortaa', fontSize: 24, color: Colors.black),
            )),
        body: Consumer<MovieListProvider>(
            builder: (context, movieListProvider, child) {
          List<Movie> movieList = movieListProvider.movieList;
          return Container(
            margin: EdgeInsets.only(top: 20),
            child: movieList !=null? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  Movie movie = movieList[index];
                  return PopularItem(movie: movie);
                }):Container( ),
          );
        }));
  }
}
