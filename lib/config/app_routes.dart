import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

abstract class AppRoutes {
  AppRoutes._();

  static const String home = '/';

  static const String spaceRental = '/space-rental';
  static const String itemRental= '/item-rental';

  static const String organAuth = '/organ-auth';
  static const String additionalPersonSelect = 'additional_person_select';
  static const String login = '/login';
  static const String signUp= '/sign-up';
  static const String authCodeLogin = '/auth-code-login';

  static const String completion = '/completion';
  static const String failure= '/failure';

  static String qr(CameraFacing cameraFacing) => '/qr/${cameraFacing.name}';
}

abstract class AppNavigation{
  AppNavigation._();

  static void goHome(BuildContext context) => context.go(AppRoutes.home);

  static void pushSpaceRental(BuildContext context) => context.push(AppRoutes.spaceRental);
  static void pushItemRental(BuildContext context) => context.push(AppRoutes.itemRental);

  static void goOranAuth(BuildContext context) => context.go(AppRoutes.organAuth);
  static void pushLogin(BuildContext context) => context.push(AppRoutes.login);
  static void pushSignUp(BuildContext context) => context.push(AppRoutes.signUp);
  static void pushAuthCodeLogin(BuildContext context) => context.push(AppRoutes.authCodeLogin);

  static void pushCompletion(BuildContext context) => context.push(AppRoutes.completion);
  static void pushFailure(BuildContext context) => context.push(AppRoutes.failure);
  static void pushQr(BuildContext context, CameraFacing cameraFacing) => context.push(AppRoutes.qr(cameraFacing));

  static void pop(BuildContext context) => context.pop();
}

abstract class RouteParams{
  RouteParams._();

  static const String cameraFacing = 'cameraFacing';
}