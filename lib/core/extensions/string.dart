import 'package:intl/intl.dart';

extension StringExtension2 on String? {
  /// null이거나 empty인 경우 true
  bool get isNullEmpty => this == null || (this?.isEmpty ?? true);

  /// null이 아니고 비어있지 않은 경우 true
  bool get isNotNullEmpty {
    return this != null && this!.isNotEmpty;
  }

  /// null이 아니고, 비어있지 않고, trim()을 했을 때도 비어있지 않은 경우 true
  bool get isNotNullTrimEmpty {
    return this != null && this!.isNotEmpty && this!.trim().isNotEmpty;
  }

  // bool get isValidNickname => RegExp(nicknameRegExp).hasMatch(this ?? '');

  // bool get isValidGatheringName => RegExp(gatheringNameRegExp).hasMatch(this ?? '');

  DateTime stringTimeToDateTime() {
    if (this == null || this!.isEmpty) return DateTime.now();
    DateTime now = DateTime.now();
    DateTime dateTime = DateTime(
      now.year, // 현재 년도
      now.month, // 현재 월
      now.day, // 현재 일
      int.parse(this!.substring(0, 2)), // 시간
      int.parse(this!.substring(2, 4)), // 분
    );
    return dateTime;
  }

  DateTime stringDateToDateTime() {
    // 20240101
    if (this == null || this!.isEmpty) return DateTime.now();

    DateTime dateTime = DateTime(
      int.parse(this!.substring(0, 4)), //년
      int.parse(this!.substring(4, 6)), //월
      int.parse(this!.substring(6, 8)), //일
    );
    return dateTime;
  }

  DateTime convertToDateDayOfTheWeek({bool useAllDay = false}) {
    if (this == null || this!.isEmpty) return DateTime.now();

    String dateStr = this!.replaceAll(RegExp(r' \(.*?\) '), ' ').trim();

    String format = '';
    if (!useAllDay) {
      format = 'yy/MM/dd HH:mm';
    } else {
      format = 'yy/MM/dd';
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(dateStr);

    return dateTime;
  }

  /// 1200 -> 12:00
  String stringToTimeFormat() {
    if (this == null || this!.isEmpty) return '';
    return '${this!.substring(0, 2)}:${this!.substring(2, 4)}';
  }

  /// 20240101 -> 2024/01/01
  String stringToDateFormat() {
    if (this == null || this!.isEmpty) return '';
    return '${this!.substring(0, 4)}/${this!.substring(4, 6)}/${this!.substring(6, 8)}';
  }

  /// 20240101 -> 2024/01/01 (요일)
  String stringToDateDayOfWeekFormat() {
    if (this == null || this!.isEmpty) return '';

    DateTime date = DateTime.parse(this!);
    // DateTime을 원하는 포맷으로 변환
    String formattedDate = DateFormat('yyyy/MM/dd (E)', 'ko_KR').format(date);
    return formattedDate;
  }
}
