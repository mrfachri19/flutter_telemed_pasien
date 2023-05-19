import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telemedicine_pasien/pages/auth/login_email.dart';
// routing
import 'package:telemedicine_pasien/pages/home/home.dart';
import 'package:telemedicine_pasien/pages/auth/welcome.dart';
import 'package:telemedicine_pasien/pages/html_render/faq_page.dart';
import 'package:telemedicine_pasien/pages/html_render/help_member_page.dart';
import 'package:telemedicine_pasien/pages/main_page/main_page.dart';
import 'package:telemedicine_pasien/pages/pages.dart';
import 'package:telemedicine_pasien/pages/profile/profile.dart';
import '../pages/html_render/html_render_page.dart';
import 'package:telemedicine_pasien/pages/html_render/kebijakan_privasi.dart';
import 'package:telemedicine_pasien/pages/auth/login_with.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static Route<dynamic> generateRoute(final RouteSettings settings) {
    final arguments =
        (settings.arguments ?? <String, dynamic>{}) as Map<String, dynamic>;

    return CupertinoPageRoute(
      builder: (context) {
        switch (settings.name) {
          // tabs
          case Routes.home:
            return const MainPage();
          case Routes.order:
            return const OrderPage();
          case Routes.inbox:
            return const InboxPage();
          case Routes.profile:
            return const ProfilePage();
          // auth
          case Routes.welcome:
            return const WelcomePage();
          case Routes.termcondition:
            return const HtmlRenderPage();
          case Routes.kebijakanprivasi:
            return const KebijakanPrivasi();
          case Routes.helpmember:
            return const HelpMemberPage();
          case Routes.faq:
            return const FaqPage();
          case Routes.loginwith:
            return const LoginWith();
          case Routes.loginemail:
            return const LoginEmail();
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
        );
      },
    );
  }
}
