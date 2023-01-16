import 'package:flutter/material.dart';
import 'package:pelisapp/providers/movie_provider.dart';
import 'package:pelisapp/screens/screens.dart';
import 'package:provider/provider.dart';


void main() => runApp(const AppState());


class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: ( _ ) => MovieProvider(), lazy: false,)
    ],
    child: const MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas App',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'details': ( _ ) => DetailsScreen(),
      },
      theme: ThemeData.light().copyWith(
         appBarTheme: const AppBarTheme(
           color: Colors.indigo,
         )
      ),
    );
  }
}
