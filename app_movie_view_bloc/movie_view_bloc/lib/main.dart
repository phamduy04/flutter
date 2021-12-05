import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_view_bloc/blocs/movie_list_bloc.dart';
import 'package:movie_view_bloc/model/movie.dart';
import 'package:movie_view_bloc/providers/movie_list_provider.dart';
import 'package:movie_view_bloc/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final movieBloc = MovieListBloc();
  @override
  Widget build(BuildContext context) {
    movieBloc.putMovieListBloc();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MovieListProvider()),
        StreamProvider<List<Movie>>(
          create: (context) => movieBloc.movieListStream,
          initialData: [],
          catchError: (context, error) {
            return [];
            
          },
        )
      ],
      child:  GetMaterialApp(
        title: 'Flutter Demo',
         debugShowCheckedModeBanner:false,
          theme:  ThemeData(
            fontFamily: "Comfortaa",
            visualDensity:  VisualDensity.adaptivePlatformDensity
          ),
        home: const HomeScreen(),
      ),
    );
  }
}
