import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/config/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Future.delayed(const Duration(milliseconds: 150));
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  await SentryFlutter.init(
    (options) {
      options.dsn = dotenv.env['DSN_URL'];

      options.sendDefaultPii = true;

      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;

      options.replay.onErrorSampleRate = 1.0;
      options.replay.sessionSampleRate = 1.0;
    },
    appRunner: () => runApp(
      SentryWidget(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: ScreenUtilInit(
        designSize: const Size(1280, 800),
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: DanuriColor.background1,
              fontFamily: 'Pretendard',
            ),
            routerConfig: router(AppRoutes.organAuth),
          );
        },
      ),
    );
  }
}
