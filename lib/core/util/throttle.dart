import 'dart:async';

class Throttle {
  static Timer? timer;

  static void run(Function() onTap) async {
    // 중복 호출 방지
    if (timer?.isActive ?? false) return;

    onTap();

    // 2초 뒤 함수 호출 가능
    timer = Timer(
      const Duration(seconds: 3),
      () => timer = null,
    );
  }
}
