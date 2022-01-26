import 'package:flutter/material.dart';
import 'package:flutter_simple_inventory_manager/services/drif_service.dart';
import 'package:flutter_simple_inventory_manager/src/app.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        Provider<MyDatabase>(
          create: (context) => MyDatabase(),
          dispose: (context, db) => db.close(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
