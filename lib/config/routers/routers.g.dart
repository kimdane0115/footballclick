// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routers.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $loginPageRoute,
      $tabScreenShell,
      $registerTeamScreenRoute,
      $findTeamScreenRoute,
      $webViewScreenRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/splash',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/splash',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginPageRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginPageRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sign_up',
          factory: $SignUpScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up_agreement',
          factory: $SignUpAgreementScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up_admin',
          factory: $SignUpAdminScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up_player',
          factory: $SignUpPlayerScreenRouteExtension._fromState,
        ),
      ],
    );

extension $LoginPageRouteExtension on LoginPageRoute {
  static LoginPageRoute _fromState(GoRouterState state) =>
      const LoginPageRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpScreenRouteExtension on SignUpScreenRoute {
  static SignUpScreenRoute _fromState(GoRouterState state) =>
      const SignUpScreenRoute();

  String get location => GoRouteData.$location(
        '/login/sign_up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpAgreementScreenRouteExtension on SignUpAgreementScreenRoute {
  static SignUpAgreementScreenRoute _fromState(GoRouterState state) =>
      const SignUpAgreementScreenRoute();

  String get location => GoRouteData.$location(
        '/login/sign_up_agreement',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpAdminScreenRouteExtension on SignUpAdminScreenRoute {
  static SignUpAdminScreenRoute _fromState(GoRouterState state) =>
      const SignUpAdminScreenRoute();

  String get location => GoRouteData.$location(
        '/login/sign_up_admin',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpPlayerScreenRouteExtension on SignUpPlayerScreenRoute {
  static SignUpPlayerScreenRoute _fromState(GoRouterState state) =>
      const SignUpPlayerScreenRoute();

  String get location => GoRouteData.$location(
        '/login/sign_up_player',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $tabScreenShell => ShellRouteData.$route(
      navigatorKey: TabScreenShell.$navigatorKey,
      factory: $TabScreenShellExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/record',
          factory: $RecordScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/my_info',
          factory: $MyInfoPageRouteExtension._fromState,
        ),
      ],
    );

extension $TabScreenShellExtension on TabScreenShell {
  static TabScreenShell _fromState(GoRouterState state) =>
      const TabScreenShell();
}

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RecordScreenRouteExtension on RecordScreenRoute {
  static RecordScreenRoute _fromState(GoRouterState state) =>
      const RecordScreenRoute();

  String get location => GoRouteData.$location(
        '/record',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyInfoPageRouteExtension on MyInfoPageRoute {
  static MyInfoPageRoute _fromState(GoRouterState state) =>
      const MyInfoPageRoute();

  String get location => GoRouteData.$location(
        '/my_info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerTeamScreenRoute => GoRouteData.$route(
      path: '/register_team',
      factory: $RegisterTeamScreenRouteExtension._fromState,
    );

extension $RegisterTeamScreenRouteExtension on RegisterTeamScreenRoute {
  static RegisterTeamScreenRoute _fromState(GoRouterState state) =>
      const RegisterTeamScreenRoute();

  String get location => GoRouteData.$location(
        '/register_team',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $findTeamScreenRoute => GoRouteData.$route(
      path: '/find_team',
      factory: $FindTeamScreenRouteExtension._fromState,
    );

extension $FindTeamScreenRouteExtension on FindTeamScreenRoute {
  static FindTeamScreenRoute _fromState(GoRouterState state) =>
      const FindTeamScreenRoute();

  String get location => GoRouteData.$location(
        '/find_team',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $webViewScreenRoute => GoRouteData.$route(
      path: '/web_view_screen',
      factory: $WebViewScreenRouteExtension._fromState,
    );

extension $WebViewScreenRouteExtension on WebViewScreenRoute {
  static WebViewScreenRoute _fromState(GoRouterState state) =>
      WebViewScreenRoute(
        uri: state.uri.queryParameters['uri']!,
        title: state.uri.queryParameters['title']!,
      );

  String get location => GoRouteData.$location(
        '/web_view_screen',
        queryParams: {
          'uri': uri,
          'title': title,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
