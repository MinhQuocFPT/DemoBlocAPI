
import 'package:bloc_flutter_test/BLoc/bloc_provider.dart';
import 'package:bloc_flutter_test/BLoc/favorite_bloc.dart';
import 'package:bloc_flutter_test/BLoc/location_bloc.dart';
import 'package:bloc_flutter_test/UI/main_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(RestaurantFinder());

class RestaurantFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationBloc>(
      bloc: LocationBloc(),
      child: BlocProvider<FavoriteBloc>(
        bloc: FavoriteBloc(),
        child: MaterialApp(
          title: 'Restaurant Finder',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: MainScreen(),
        ),
      ),
    );
  }
}