import 'dart:async';

import 'package:bloc_flutter_test/BLoc/bloc.dart';
import 'package:bloc_flutter_test/DataLayer/location.dart';
import 'package:bloc_flutter_test/DataLayer/zomato_client.dart';

class LocationQueryBloc implements Bloc {
  final _controller = StreamController<List<Location>>();
  final _client = ZomatoClient();
  Stream<List<Location>> get locationStream => _controller.stream;

  void submitQuery(String query) async {
    // 1
    final results = await _client.fetchLocations(query);
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}