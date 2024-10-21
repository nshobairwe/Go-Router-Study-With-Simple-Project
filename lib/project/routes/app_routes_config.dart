
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routeproject/pages/about.dart';
import 'package:routeproject/pages/contact.dart';
import 'package:routeproject/pages/error_page.dart';
import 'package:routeproject/pages/profile.dart';
import 'package:routeproject/project/routes/app_route_const.dart';

import '../../pages/home.dart';

class MyAppRouter{

  static  GoRouter returnRouter(bool isAuth){
    GoRouter router = GoRouter(
      //add a list of routes
        routes: [
          GoRoute(
              name: MyAppRouteConstants.homeRouteName,
              path: '/',
              pageBuilder: (context, state){
                return MaterialPage(child: Home());
              }
          ),

          GoRoute(
              name: MyAppRouteConstants.profileRouteName,
              path: '/profile/:username/:userid',
              pageBuilder: (context, state){
                return MaterialPage(child: Profile(
                  username: state.params['username']!,
                  userid: state.params['userid']!,));
              }
          ),

          GoRoute(
              name: MyAppRouteConstants.aboutRouteName,
              path: '/about',
              pageBuilder: (context, state){
                return MaterialPage(child: About());
              }
          ),

          GoRoute(
              name: MyAppRouteConstants.contactRouteName,
              path: '/contact_us',
              pageBuilder: (context, state){
                return MaterialPage(child: Contact());
              }
          ),
        ],
        errorPageBuilder: (context, state){
          return MaterialPage(child: ErrorPage());
        },
        redirect: (context,state){
          if(!isAuth && state.location.startsWith('/${MyAppRouteConstants.profileRouteName}')){
            return context.namedLocation(
                MyAppRouteConstants.contactRouteName);
          }else{
            return null;
          }
        }
    );
    return router;
  }

}
