import 'package:auto_route/annotations.dart';
import 'package:hermosa/presentation/home/home_page.dart';
import 'package:hermosa/presentation/login/login_page.dart';
import 'package:hermosa/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: LoginPage),
  AutoRoute(page: HomePage),
])
class $AppRouter {}
