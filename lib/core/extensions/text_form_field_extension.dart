
import '../../index.dart';

extension InputDecorationExtension on InputDecorationTheme {
  InputDecoration basic(BuildContext context) => const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8,
        ),
      );

  InputDecoration black(BuildContext context) => InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: context.theme.colorScheme.grey700),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: context.theme.colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: context.theme.colorScheme.error),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: context.theme.colorScheme.primaryContainer),
        ),
        suffixIconColor: context.theme.colorScheme.neutral70,
        fillColor: context.theme.colorScheme.grey700,
        filled: true,
      );

  InputDecoration error(BuildContext context) => const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8,
        ),
        suffixIcon: IconButton(
          onPressed: null,
          icon: Icon(Icons.error, color: Colors.red),
        ),
      );

  InputDecoration search(BuildContext context) => const InputDecoration(
        fillColor: Colors.transparent,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
      );
}
