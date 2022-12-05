import 'package:options_gk/common/constants.dart';
import 'package:options_gk/components/base_screen.dart';
import 'package:options_gk/components/responsive.dart';
import 'package:options_gk/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      headerText: 'Dashboard',
      child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundedButton(
                  title: 'Profile Screen',
                  onPressed: () => context.goNamed(AUTH_PROFILE_SCREEN)),
            ],
          ),
          desktop: Column()),
    );
  }
}
