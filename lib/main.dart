import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/config/router.dart';
import 'package:danuri_flutter/core/provider/flows/exit_room_flow_provider.dart';
import 'package:danuri_flutter/core/provider/flows/item_rental_flow_provider.dart';
import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/flows/register_used_space_flow_provider.dart';
import 'package:danuri_flutter/core/provider/rental_id_provider.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/auth/admin_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/admin_login_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  bool firstRun = false;
  final deviceToken = await TokenStorage().getDeviceAccessToken();

  if (deviceToken == null) {
    await AdminAuthDataSource().login(
      AdminLoginRequest(
        email: 'admin@example.com',
        password: dotenv.env['ADMIN_PASSWORD']!,
      ),
    );
    firstRun = true;
  }
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
    return ScreenUtilInit(
      designSize: const Size(1280, 800),
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => PhoneNumberProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => SpaceIdProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => ItemIdProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => ExitRoomFlowProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => RegisterUsedSpaceFlowProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => ItemRentalFlowProvider(),
            ),
            ChangeNotifierProvider(
              create: (context) => RentalIdProvider(),
            ),
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: DanuriColor.background1,
              fontFamily: 'Pretendard',
            ),
            routerConfig: router(
              firstRun ? '/organ-auth' : '/',
            ),
          ),
        );
      },
    );
  }
}