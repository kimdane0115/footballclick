
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
}
