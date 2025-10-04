import 'package:cooksy_flutter/core/colors.dart';
import 'package:cooksy_flutter/core/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsShared.splashBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(right: -15, top: 441, child: Image.asset('assets/images/toy-face-2.png', width: 225.4, height: 298.54)),
            Positioned(
              top: 347 + 230,
              child: Container(
                width: 394,
                height: 180,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffFF470B).withAlpha(0), Color(0xffFF470B)],
                  ),
                ),
              ),
            ),
            Positioned(left: -40, top: 347, child: Image.asset('assets/images/toy-face-1.png', width: 358, height: 434)),
            Positioned(
              top: 347 + 250,
              child: Container(
                width: 394,
                height: 195,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffFF470B).withAlpha(0), Color(0xffFF470B)],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 51),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 56),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).colorScheme.onPrimary),
                    width: 73,
                    height: 73,
                    padding: const EdgeInsets.all(11),
                    child: Image.asset('assets/images/app-logo.png', fit: BoxFit.contain),
                  ),
                  SizedBox(height: 31),
                  Text(
                    'Food for Everyone',
                    style: GoogleFonts.nunito(fontSize: 65, fontWeight: FontWeight.w900, height: .868, color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.only(end: 51),
                          child: ElevatedButton(
                            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.onPrimary),
                              foregroundColor: WidgetStateProperty.all(Theme.of(context).colorScheme.primary),
                            ),
                            onPressed: () {
                              context.go(AppRoutes.home);
                            },
                            child: Text('Get Started'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
