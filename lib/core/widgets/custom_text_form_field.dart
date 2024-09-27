import 'package:flutter/services.dart';
import 'package:footballclick/core/extensions/string.dart';
import 'package:footballclick/core/extensions/text_form_field_extension.dart';

import '../../index.dart';
import '../utils/text_input_formatter.dart';

enum CustomTextFormFieldType {
  white,
  black,
  search;
}

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final CustomTextFormFieldType? type;
  final Widget? child;
  final FocusNode? focusNode;
  final InputDecoration? inputDecoration;
  final AutovalidateMode? autovalidateMode;
  final String? title;
  final String? hintText;

  final String? counterText;
  String? errorText;
  final FormFieldValidator<String>? validator;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  final String? initialValue;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool? enableInteractiveSelection;
  final bool autocorrect;
  final bool autofocus;
  final bool showSecure;
  final bool showClear;
  final Function? onClear;
  final bool readOnly;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final bool isSecret;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final Widget? suffix;
  final Widget? prefix;
  final Widget? prefixIcon;
  final TextAlignVertical textAlignVertical;

  CustomTextFormField({
    super.key,
    this.type = CustomTextFormFieldType.white,
    this.focusNode,
    this.inputDecoration,
    this.autovalidateMode,
    this.child,
    this.title,
    this.hintText,
    this.counterText,
    this.autocorrect = false,
    this.autofocus = false,
    this.errorText,
    this.validator,
    this.icon,
    this.showSecure = false,
    this.showClear = false,
    this.onClear,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.onChanged,
    this.onTap,
    this.enableInteractiveSelection,
    this.controller,
    this.initialValue,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textInputAction,
    this.keyboardType,
    this.inputFormatters,
    this.fillColor = Colors.transparent,
    this.borderColor = Colors.black,
    this.textStyle,
    this.isSecret = false,
    this.padding,
    this.hintStyle,
    this.suffix,
    this.prefix,
    this.prefixIcon,
    this.textAlignVertical = TextAlignVertical.center,
    this.readOnly = false,
    this.enabled = true,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isUidFocused = false;

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (focused) {
        setState(() {
          isUidFocused = focused;
        });
      },
      child: (() {
        switch (widget.type) {
          case CustomTextFormFieldType.white:
            return _whiteTextFormField();
          case CustomTextFormFieldType.black:
            return _blackTextFormField();
          default:
            return _searchTextFormField();
        }
      })(),
    );
  }

  List<TextInputFormatter>? get inputFormatters => widget.maxLength == null
      ? widget.inputFormatters
      : [GlobalInputFormatter(widget.maxLength ?? 0), ...?widget.inputFormatters];

  Widget _whiteTextFormField() {
    return TextFormField(
      style: widget.errorText.isNotNullEmpty
          ? widget.textStyle != null
              ? widget.textStyle!.copyWith(color: context.theme.colorScheme.error)
              : TextStyle(color: context.theme.colorScheme.error)
          : widget.textStyle,
      buildCounter: textIndicator,
      decoration: widget.inputDecoration ??
          InputDecoration(
            hintText: widget.hintText,
            counterText: widget.counterText,
            errorText: widget.errorText,
            prefixIcon: widget.prefixIcon,
            prefix: widget.prefix,
            suffixIcon: widget.controller!.text.isNotEmpty && isUidFocused && widget.showClear
                ? IconButton(
                    onPressed: widget.errorText.isNullEmpty
                        ? () {
                            setState(() {
                              widget.controller!.clear();
                              widget.onClear!.call();
                            });
                          }
                        : null,
                    icon: widget.errorText.isNotNullEmpty
                        ? Icon(Icons.error, color: context.theme.colorScheme.error)
                        : const Icon(Icons.cancel),
                  )
                : null,
            fillColor: context.theme.colorScheme.grey50,                
          ),
      autovalidateMode: widget.autovalidateMode,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      initialValue: widget.initialValue,
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      controller: widget.controller,
      autocorrect: widget.autocorrect,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      textCapitalization: TextCapitalization.none,
      obscureText: widget.isSecret,
      onChanged: (text) {
        widget.errorText = null;
        setState(() {
          if (widget.onChanged != null) {
            widget.onChanged!(text);
          }
        });
      },
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: null,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      textInputAction: widget.textInputAction,
      textAlignVertical: widget.textAlignVertical,
      keyboardType: widget.keyboardType,
      inputFormatters: inputFormatters,
    );
  }

  Widget? textIndicator(_, {required currentLength, required isFocused, maxLength}) {
    if (widget.maxLength == null) return null;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: widget.controller!.text.length.toString(),
            style: TextStyle(
                color: widget.type == CustomTextFormFieldType.black
                    ? context.theme.colorScheme.customWhite
                    : context.theme.colorScheme.grey500), // currentLength 색상 변경
          ),
          TextSpan(text: ' / ${widget.maxLength ?? 0}', style: TextStyle(color: context.theme.colorScheme.grey500)),
        ],
      ),
    );
  }

  Widget _blackTextFormField() {
    return TextFormField(
      style: widget.errorText.isNotNullEmpty
          ? widget.textStyle != null
              ? widget.textStyle!.copyWith(color: context.theme.colorScheme.error)
              : TextStyle(color: context.theme.colorScheme.error)
          : widget.textStyle ?? TextStyle(color: context.theme.colorScheme.customWhite),
      buildCounter: textIndicator,
      decoration: widget.inputDecoration ??
          context.theme.inputDecorationTheme.black(context).copyWith(
                hintText: widget.hintText,
                counterText: widget.counterText,
                errorText: widget.errorText,
                prefixIcon: widget.prefixIcon,
                prefix: widget.prefix,
                suffixIcon: widget.controller!.text.isNotEmpty && isUidFocused
                    ? IconButton(
                        onPressed: widget.errorText.isNullEmpty
                            ? () {
                                setState(() {
                                  widget.controller!.clear();
                                  widget.onClear!.call();
                                });
                              }
                            : null,
                        icon: widget.errorText.isNotNullEmpty
                            ? Icon(Icons.error, color: context.theme.colorScheme.error)
                            : const Icon(Icons.cancel),
                      )
                    : null,
              ),
      autovalidateMode: widget.autovalidateMode,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      initialValue: widget.initialValue,
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      controller: widget.controller,
      autocorrect: widget.autocorrect,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      textCapitalization: TextCapitalization.none,
      obscureText: widget.isSecret,
      onChanged: (text) {
        // widget.errorText = null;
        setState(() {
          if (widget.onChanged != null) {
            widget.onChanged!(text);
          }
        });
      },
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: null,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      textInputAction: widget.textInputAction,
      textAlignVertical: widget.textAlignVertical,
      keyboardType: widget.keyboardType,
      inputFormatters: inputFormatters,
    );
  }

  Widget _searchTextFormField() {
    return TextFormField(
      style: widget.errorText.isNotNullEmpty
          ? widget.textStyle != null
              ? widget.textStyle!.copyWith(color: context.theme.colorScheme.error)
              : TextStyle(color: context.theme.colorScheme.error)
          : widget.textStyle,
      decoration: widget.inputDecoration ??
          context.theme.inputDecorationTheme.search(context).copyWith(
                hintText: widget.hintText,
                counterText: widget.counterText,
                errorText: widget.errorText,
                prefixIcon: widget.prefixIcon,
                prefix: widget.prefix,
                suffixIcon: widget.controller!.text.isNotEmpty && isUidFocused
                    ? IconButton(
                        onPressed: widget.errorText.isNullEmpty
                            ? () {
                                setState(() {
                                  widget.controller!.clear();
                                  widget.onClear!.call();
                                });
                              }
                            : null,
                        icon: widget.errorText.isNotNullEmpty
                            ? Icon(Icons.error, color: context.theme.colorScheme.error)
                            : Icon(Icons.close, color: context.theme.colorScheme.onSurfaceVariant),
                      )
                    : null,
              ),
      autovalidateMode: widget.autovalidateMode,
      enableInteractiveSelection: widget.enableInteractiveSelection,
      initialValue: widget.initialValue,
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      controller: widget.controller,
      autocorrect: widget.autocorrect,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      textCapitalization: TextCapitalization.none,
      obscureText: widget.isSecret,
      onChanged: (text) {
        widget.errorText = null;
        setState(() {
          if (widget.onChanged != null) {
            widget.onChanged!(text);
          }
        });
      },
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      expands: widget.expands,
      maxLength: null,
      validator: widget.validator,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      textInputAction: widget.textInputAction,
      textAlignVertical: widget.textAlignVertical,
      keyboardType: widget.keyboardType,
      inputFormatters: inputFormatters,
    );
  }
}
