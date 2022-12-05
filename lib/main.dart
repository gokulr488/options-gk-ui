import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:options_gk/common/constants.dart';
import 'package:options_gk/common/ui_constants.dart';
import 'package:options_gk/common/ui_state.dart';
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
    //initialLocation: isLoggedIn ? '/dash' : '/',
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
          name: WELCOME_SCREEN,
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              WelcomeScreen(),
          routes: [
            GoRoute(
                name: CREATE_COMPANY_SCREEN,
                path: 'createCompany',
                builder: (BuildContext context, GoRouterState state) =>
                    const CreateCompanyScreen()),
            GoRoute(
                name: SIGN_IN_SCREEN,
                path: 'signIn',
                builder: (BuildContext context, GoRouterState state) =>
                    const SignInWidget(),
                routes: [
                  GoRoute(
                      name: VERIFY_EMAIL_SCREEN,
                      path: 'verifyEmail',
                      builder: (BuildContext context, GoRouterState state) =>
                          const VerifyEmailScreen()),
                  GoRoute(
                      name: PHONE_SCREEN,
                      path: 'phone',
                      builder: (BuildContext context, GoRouterState state) =>
                          const PhoneInputWidget(),
                      routes: [
                        GoRoute(
                            name: SMS_SCREEN,
                            path: 'sms',
                            builder:
                                (BuildContext context, GoRouterState state) {
                              state.extra;
                              return SmsInputScreen(
                                  arguments:
                                      state.extra as Map<String, dynamic>?);
                            }),
                      ]),
                  GoRoute(
                      name: FORGOT_PASSWORD_SCREEN,
                      path: 'forgotPassword',
                      builder: (BuildContext context, GoRouterState state) {
                        state.extra;
                        return ForgotPasswordWidget(
                            arguments: state.extra as Map<String, dynamic>?);
                      }),
                  GoRoute(
                      name: EMAIL_SIGN_IN_SCREEN,
                      path: 'emailSignIn',
                      builder: (BuildContext context, GoRouterState state) =>
                          EmailSignInWidget()),
                ]),
          ]),
      GoRoute(
        name: DASHBOARD_SCREEN,
        path: '/dash',
        builder: (BuildContext context, GoRouterState state) =>
            const DashBoardScreen(),
        routes: <GoRoute>[
          GoRoute(
              name: NFC_TEST_SCREEN,
              path: 'nfc',
              builder: (BuildContext context, GoRouterState state) =>
                  const NfcTestScreen()),
          GoRoute(
              name: AUTH_PROFILE_SCREEN,
              path: 'authProfile',
              builder: (BuildContext context, GoRouterState state) =>
                  AuthProfileScreen()),
        ],
      ),
    ],
  );
}
