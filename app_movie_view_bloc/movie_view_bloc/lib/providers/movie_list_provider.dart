
import 'package:flutter/material.dart';
import 'package:movie_view_bloc/model/movie.dart';

class MovieListProvider with ChangeNotifier {
   List<Movie> movieList = [];

   updateVideoList({  required List<Movie> movieList })
   {
     this.movieList = movieList;
     print("Độ dài dữ liệu trên Provider: " + this.movieList.length.toString());
     //notifyListeners();

   }

}