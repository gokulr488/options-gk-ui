import 'dart:async';

import 'package:options_gk/common/constants.dart';
import 'package:options_gk/components/base_screen.dart';
import 'package:options_gk/components/cards/button_card.dart';
import 'package:options_gk/components/responsive.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 500), () {
      // isLoggedIn ? context.goNamedNamed(DASHBOARD_SCREEN) : context.goNamed(SIGN_IN_SCREEN);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Welcome',
        child: Responsive(
            mobile: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Expanded(
                    child: ButtonCard(
                      icon: Icons.add_business,
                      text: 'Create a Company',
                      onTap: () => context.goNamed(SIGN_IN_SCREEN),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ButtonCard(
                      icon: Icons.account_circle_outlined,
                      text: 'Login to Company',
                      onTap: () => context.goNamed(SIGN_IN_SCREEN),
                    ),
                  ),
                ],
              ),
            ),
            desktop: web));
  }
}
