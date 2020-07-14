import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_weather/data/repository/api_impl.dart';
import 'package:flutter_weather/data/repository/api_repository.dart';
import 'package:flutter_weather/data/repository/store_impl.dart';
import 'package:flutter_weather/data/repository/store_repository.dart';
import 'package:flutter_weather/ui/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiRepository>(
          create: (_) => ApiImpl(),
        ),
        Provider<StoreRepository>(
          create: (_) => StoreImpl(),
        ),
      ],
      child: MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}
