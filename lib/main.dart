import 'package:flutter/material.dart';
import 'package:routeproject/project/routes/app_routes_config.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRouter.returnRouter(true).routeInformationParser,
      routerDelegate: MyAppRouter.returnRouter(true).routerDelegate,
    );
  }
}
