import 'package:domi_track/core/route/routes.dart';
import 'package:domi_track/core/theme/app_theme.dart';
import 'package:domi_track/providers/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) {
          return AppState();
        },
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        ScreenUtil.init(context, designSize: const Size(360, 801));
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Domi Track',
          theme: AppTheme().themeData,
          routerConfig: AppRouter().router,
        );
      },
    );
  }
}
