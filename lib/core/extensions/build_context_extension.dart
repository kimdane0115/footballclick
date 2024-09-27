// import 'package:fluttertoast/fluttertoast.dart';

import '../../index.dart';

extension BuildContextExtension on BuildContext {
  /// theme
  ThemeData get theme => Theme.of(this);

  /// mediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// snackBar
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar({
    required Widget content,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: content,
      behavior: SnackBarBehavior.floating,
    ));
  }

  // Future<bool?> flutterToast({required String content}) {
  //   return Fluttertoast.showToast(
  //       msg: content,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: theme.colorScheme.dduGreen,
  //       textColor: theme.colorScheme.dduBlack,
  //       fontSize: 14.0
  //   );
  // }
}
