import 'package:flutter/material.dart';
import 'package:great_places_new/providers/grate_places.dart';
import 'package:great_places_new/screens/places_list_screen.dart';
import 'package:great_places_new/utils/app_routes.dart';
import 'package:provider/provider.dart';
import '../screens/place_form_screen.dart';

void main() {
  runApp(MyApp(
    
  ));
}

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Great Places',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.indigo, secondary: Colors.amber),
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }

}


