import '../../index.dart';

extension ButtonStyleExtension on ButtonStyle {
  ButtonStyle size({
    double? height,
    double? width,
  }) {
    return copyWith(minimumSize: WidgetStateProperty.all(Size(width ?? 64, height ?? 52)));
  }

  ButtonStyle get infinity => copyWith(minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)));
  ButtonStyle insets({
    EdgeInsetsGeometry? padding,
  }) {
    return copyWith(padding: WidgetStateProperty.all(padding));
  }

  ButtonStyle borderShape({
    OutlinedBorder? shape,
  }) {
    return copyWith(shape: WidgetStateProperty.all(shape));
  }
}
