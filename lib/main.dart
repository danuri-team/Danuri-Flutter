import 'package:danuri_flutter/core/design_system/color.dart';
import 'package:danuri_flutter/config/router.dart';
import 'package:danuri_flutter/core/provider/phone_number_provider.dart';
import 'package:danuri_flutter/core/provider/space_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  //  HttpOverrides.global = MyHttpOverrides();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 800),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
          child: ChangeNotifierProvider(
            create: (context) {
              PhoneNumberProvider();
              SpaceIdProvider();
            },
            child: MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: DanuriColor.background1,
                fontFamily: 'Pretendard',
              ),
              routerConfig: router,
            ),
          ),
        );
      },
    );
  }
}

//요청한 서버의 인증서(CA)가 공인된 인증서가 아닐 경우 우회
// class MyHttpOverrides extends HttpOverrides{
//   @override
//   HttpClient createHttpClient(SecurityContext? context){  // '?'를 추가해서 null safety 확보
//     return super.createHttpClient(context)
//       ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
//   }
// }
