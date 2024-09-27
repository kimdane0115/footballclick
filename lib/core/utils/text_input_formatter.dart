import 'package:flutter/services.dart';

class GlobalInputFormatter extends TextInputFormatter {
  final int? maxLength;

  GlobalInputFormatter(this.maxLength);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // 새 값이 최대 길이를 초과하는지 확인
    if (maxLength != null) {
      if ((newValue.text).length > (maxLength ?? 0)) {
        // 초과하는 경우, 이전 값 반환
        return oldValue;
      }
    }
    // 초과하지 않는 경우, 새 값 반환
    return newValue;
  }
}