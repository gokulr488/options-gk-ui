import 'package:options_gk/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talos_commons/widgets/base_screen.dart';
import 'package:talos_commons/widgets/cards/button_card.dart';
import 'package:talos_commons/widgets/responsive.dart';

class WelcomeScreen extends StatelessWidget {
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
