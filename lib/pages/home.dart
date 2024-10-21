import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routeproject/project/routes/app_route_const.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Home'),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants
                    .aboutRouteName);
              },
              child: Text('about page')),
          ElevatedButton(
              onPressed: (){
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants
                    .profileRouteName,
                  params: {
                      'username':'witnes',
                      'userid': '244534',
                    });
              },
              child: Text('profile page')),
          ElevatedButton(
              onPressed: (){
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants
                    .contactRouteName);
              },
              child: Text('contact us page')),
        ],
      ),
    );
  }
}
