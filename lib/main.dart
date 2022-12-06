import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:options_gk/common/constants.dart';
import 'package:options_gk/common/ui_constants.dart';
import 'package:options_gk/common/ui_state.dart';
import 'package:options_gk/screens/authentication/auth_profile_screen.dart';
import 'package:options_gk/screens/authentication/sign_in_screen.dart';
import 'package:options_gk/screens/dashboard_screen.dart';
import 'package:options_gk/screens/historic_data.dart';
import 'package:options_gk/screens/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UiState>(create: (_) => UiState()),
  ], child: OptionsGkApp()));
}

class OptionsGkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UiState>(
        builder: (BuildContext context, UiState uiState, _) {
      return MaterialApp.router(
          title: 'Algo Track',
          theme: ThemeData(
              useMaterial3: true,
              colorSchemeSeed: uiState.baseColor,
              brightness: uiState.themeMode,
              inputDecorationTheme:
                  kTextFieldDecorationTheme(Theme.of(context)),
              textTheme: GoogleFonts.openSansTextTheme(
                  ThemeData(brightness: uiState.themeMode).textTheme)),
          debugShowCheckedModeBanner: false,
          routerConfig: _router);
    });
  }

  final GoRouter _router = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: <GoRoute>[
        GoRoute(
          name: WELCOME_SCREEN,
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              WelcomeScreen(),
          routes: [
            GoRoute(
                name: HISTORIC_DATA_SCREEN,
                path: 'createCompany',
                builder: (BuildContext context, GoRouterState state) =>
                    const HistoricDataScreen()),
            GoRoute(
              name: SIGN_IN_SCREEN,
              path: 'signIn',
              builder: (BuildContext context, GoRouterState state) =>
                  const SignInScreen(),
            ),
            GoRoute(
              name: DASHBOARD_SCREEN,
              path: 'dash',
              builder: (BuildContext context, GoRouterState state) =>
                  const DashBoardScreen(),
              routes: <GoRoute>[
                GoRoute(
                    name: AUTH_PROFILE_SCREEN,
                    path: 'authProfile',
                    builder: (BuildContext context, GoRouterState state) =>
                        AuthProfileScreen()),
              ],
            ),
          ],
        )
      ]);
}
