
import 'package:bloc_flutter_test/BLoc/bloc_provider.dart';
import 'package:bloc_flutter_test/BLoc/location_bloc.dart';
import 'package:bloc_flutter_test/DataLayer/location.dart';
import 'package:bloc_flutter_test/UI/location_screen.dart';
import 'package:bloc_flutter_test/UI/restaurant_screen.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
        stream: BlocProvider.of<LocationBloc>(context).locationStream,
        builder: (context, snapshot) {
          final location = snapshot.data;

          if (location == null) {
            return LocationScreen();
          }

          return RestaurantScreen(location: location);
        }
    );
  }
}