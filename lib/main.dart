import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routes/app_router.dart';
import 'package:flutter_advance/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
