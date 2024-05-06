import 'package:options_gk/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talos_commons/widgets/base_screen.dart';
import 'package:talos_commons/widgets/responsive.dart';
import 'package:talos_commons/widgets/rounded_button.dart';

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
