import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routes/app_router.dart';
import 'package:flutter_advance/doc_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
