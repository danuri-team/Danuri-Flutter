import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/core/theme/color.dart';
import 'package:danuri_flutter/config/router.dart';
import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/view_models/admin_auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  bool firstRun = false;
  String? adminToken;
  String? deviceToken;
  await Future.wait([
    TokenStorage().getAdminAccessToken(),
    TokenStorage().getDeviceAccessToken()
  ]).then(
    (value) {
      adminToken = value[0];
      deviceToken = value[1];
    },
  );

  if (adminToken == null) {
    final viewModel = AdminAuthViewModel();
    await viewModel.adminLogin();
  }

  if (deviceToken == null) firstRun = true;

  runApp(MyApp(firstRun: firstRun));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.firstRun,
  });

  final bool firstRun;

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
            routerConfig: router(
              firstRun ? AppRoutes.organAuth : AppRoutes.home,
            ),
          );
        },
      ),
    );
  }
}
