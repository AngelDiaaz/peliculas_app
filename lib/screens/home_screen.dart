import 'package:flutter/material.dart';
import 'package:pelisapp/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/movie_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(movies:moviesProvider.onDisplayMovies),
            MovieSlider(),
          ],

          //Listado horizontal de peliculas
        ),
      ),
    );
  }
}
