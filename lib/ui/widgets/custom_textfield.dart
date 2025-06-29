import 'package:sugar_pros/core/utils/exports.dart';
import 'package:sugar_pros/ui/widgets/input_fornatter/thousands_separator_formatter.dart';

class CustomTextField extends StatefulWidget {
  final String? label;
  final String? initalValue;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? labelText;
  final Color? fillColor;
  final Color? borderColor;
  final String? prefixImage;
  final String? suffixImage;
  final Widget? suffixIcon;
  final TextDirection? textDirection;
  final Function? suffixIconFunc;
  final int? minLines;
  final int? maxLines;
  final InputBorder? inputBorder;

  final TextEditingController? controller;
  final bool? obscure;
  final TextInputAction? action;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final VoidCallback? suffixFunc;
  final String? errorText;
  final bool enabled;
  final String? helperText;
  final TextStyle? helperStyle;
  final int? maxLength;
  final bool center;
  final bool showCusor;
  final bool readOnly;
  final bool autofocus;
  final VoidCallback? onSubmit;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextFieldType? type;
  final bool validate;
  final bool symbol;
  final bool border;
  final bool search;
  final String? Function(String?)? validator;
  final EdgeInsets? contentPadding;
  final double? radius;
  final bool? showErrorText;
  final bool isRequired;
  final bool enableInteractiveSelection;
  final bool info;
  final Function? onInfoTap;
  final Widget? prefixIcon;
  final TextCapitalization? textCapitalization;
  final BoxConstraints? suffixConstraint;

  const CustomTextField(
      {super.key,
      this.label,
      this.initalValue,
      this.style,
      this.hintStyle,
      this.hintText,
      this.prefixIcon,
      this.fillColor,
      this.borderColor,
      this.inputBorder,
      this.prefixImage,
      this.textDirection = TextDirection.ltr,
      this.suffixImage,
      this.suffixIcon,
      this.suffixIconFunc,
      this.minLines,
      this.maxLines,
      this.controller,
      this.obscure,
      this.action,
      this.inputType,
      this.onChanged,
      this.suffixFunc,
      this.errorText,
      this.labelText,
      this.enabled = true,
      this.helperText,
      this.helperStyle,
      this.maxLength,
      this.onSubmit,
      this.focusNode,
      this.center = false,
      this.showCusor = true,
      this.readOnly = false,
      this.autofocus = false,
      this.textInputAction,
      this.inputFormatters,
      this.type = TextFieldType.others,
      this.symbol = false,
      this.validate = true,
      this.search = false,
      this.border = false,
      this.validator,
      this.contentPadding,
      this.radius,
      this.showErrorText = true,
      this.isRequired = false,
      this.enableInteractiveSelection = true,
      this.info = false,
      this.onInfoTap,
      this.textCapitalization,
      this.suffixConstraint});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // final Color _color = const Color(0XFFFFF4E1);

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.label == null)
          const SizedBox()
        else
          Container(
            margin: EdgeInsets.only(bottom: 6.h, left: 0.h),
            child: !widget.isRequired
                ? Row(
                    children: [
                      Text(
                        widget.label!,
                        style: BrandTextStyles.medium.copyWith(
                          fontSize: 14.sp,
                          color: hexColor('#041915'),
                        ),
                      ),
                      SizedBox(
                        width: widget.info ? 5.w : 0,
                      ),
                      widget.info
                          ? GestureDetector(
                              onTap: () => widget.onInfoTap!(),
                              child: Icon(
                                Icons.info,
                                color: Colors.blueGrey.withValues(alpha: 0.5),
                                size: 18.h,
                              ),
                            )
                          : const SizedBox()
                    ],
                  )
                : RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                        text: widget.label!,
                        children: [
                          TextSpan(
                            text: '*',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                          ),
                        ]),
                  ),
          ),
        Expanded(
          flex: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  initialValue: widget.initalValue,
                  textCapitalization:
                      widget.textCapitalization ?? TextCapitalization.none,
                  validator: (val) {
                    if (!widget.validate) return null;
                    if (val == null) return 'Invalid input';
                    if (widget.validator == null) {
                      if (widget.type == TextFieldType.bvn) {
                        if (val.isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.trim().isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.length < 11) {
                          return 'Invalid Entry';
                        } else if (int.tryParse(val) == null) {
                          return 'Invalid entry';
                        }
                        return null;
                      } else if (widget.type == TextFieldType.accountNo) {
                        if (val.isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.trim().isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.length < 10) {
                          return 'Invalid Entry';
                        } else if (int.tryParse(val) == null) {
                          return 'Invalid entry';
                        }
                        return null;
                      } else if (widget.type == TextFieldType.pin) {
                        if (val.isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.trim().isEmpty) {
                          return 'Field cannot be empty';
                        } else if (val.length < 4) {
                          return 'Invalid Entry';
                        } else if (int.tryParse(val) == null) {
                          return 'Invalid entry';
                        }
                        return null;
                      } else if (widget.type == TextFieldType.phone) {
                        if (val.isEmpty || val.trim().isEmpty) {
                          return 'Field must not be empty';
                        } else if (val.length < 11) {
                          return 'Invalid entry';
                        } else if (int.tryParse(val.replaceAll('+', '')) ==
                            null) {
                          return 'Invalid entry';
                        }
                        return null;
                      } else if (widget.type == TextFieldType.officePhone) {
                        if (val.isEmpty || val.trim().isEmpty) {
                          return 'Field must not be empty';
                        } else if (val.length < 8) {
                          return 'Invalid entry';
                        } else if (int.tryParse(val.replaceAll('+', '')) ==
                            null) {
                          return 'Invalid entry';
                        }
                        return null;
                      } else {
                        if (widget.validate) {
                          if (val.isEmpty) {
                            return 'Field cannot be empty';
                          } else if (val.trim().isEmpty) {
                            return 'Field cannot be empty';
                          } else if (widget.type == TextFieldType.amount) {
                            if (double.tryParse(val.replaceAll(',', '')) ==
                                null) {
                              return 'Enter a valid amount';
                            } else if (double.tryParse(
                                    val.replaceAll(',', ''))! <=
                                0) {
                              return 'Enter a valid amount';
                            }
                          } else if (widget.type == TextFieldType.email) {
                            bool isValidEmail = RegExp(
                                    r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                                .hasMatch(val);
                            return isValidEmail
                                ? null
                                : 'Please provide a valid email address';
                          } else if (widget.type == TextFieldType.setPassword) {
                            bool isValidPassword = val
                                .isPasswordValid; //RegExp(r"^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[^\da-zA-Z]).{8,15}$").hasMatch(val);
                            return isValidPassword
                                ? null
                                : 'Password must contain at least one special character,one number, one lower case letter, one upper case letter and between 8 and 15 characters long';
                          } else if (widget.type == TextFieldType.nin) {
                            if (val.isEmpty || val.trim().isEmpty) {
                              return 'Field must not be empty';
                            } else if (val.length < 11) {
                              return 'Invalid entry';
                            } else if (int.tryParse(val) == null) {
                              return 'Invalid entry';
                            }
                            return null;
                          }
                        }

                        return null;
                      }
                    } else {
                      return widget.validator!(val);
                    }
                  },
                  textDirection: widget.textDirection,
                  inputFormatters: getFormertter(),
                  focusNode: _focusNode,
                  autofocus: widget.autofocus,
                  showCursor: widget.showCusor,
                  cursorColor: BrandColors.bc2C2948,
                  readOnly: widget.readOnly,
                  enableInteractiveSelection: widget.enableInteractiveSelection,
                  enabled: widget.enabled,
                  controller: widget.controller,
                  maxLines: widget.maxLines ?? 1,
                  minLines: widget.minLines,
                  obscureText: widget.obscure == null ? false : widget.obscure!,
                  style: widget.style ??
                      BrandTextStyles.medium.copyWith(
                          fontSize: 15.sp,
                          height: 1.67,
                          color: BrandColors.bc2C2948),
                  textAlign: widget.center ? TextAlign.center : TextAlign.start,
                  textInputAction:
                      widget.textInputAction ?? TextInputAction.done,
                  onEditingComplete: widget.onSubmit,
                  keyboardType: widget.type == TextFieldType.phone
                      ? TextInputType.phone
                      : widget.inputType ?? TextInputType.text,
                  textAlignVertical: TextAlignVertical.center,
                  onChanged: widget.onChanged,
                  maxLength: widget.maxLength,
                  decoration: InputDecoration(
                    isDense: true,
                    filled: true,
                    fillColor: _isFocused ? hexColor('#FFFFEA') : hexColor('#F8FAFC'),
                    hintText: widget.hintText ?? '',
                    hintStyle: widget.hintStyle ??
                        BrandTextStyles.regular.copyWith(
                          fontSize: 14.sp,
                          color: hexColor('#64748B')
                        ),
                    hintTextDirection: widget.textDirection,
                    helperText: widget.helperText,
                    helperStyle:
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              fontSize: 12.sp,
                              height: 1.67,
                              color: hexColor('#64748B')
                            ),
                    helperMaxLines: 10,
                    errorMaxLines: 10,
                    border: widget.inputBorder ??
                        OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFC8C83A)),
                            borderRadius:
                                BorderRadius.circular(widget.radius ?? 8.r)),
                    focusedBorder: widget.inputBorder ??
                        OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xFFC8C83A)),
                            borderRadius:
                                BorderRadius.circular(widget.radius ?? 8.r)),
                    enabledBorder: widget.inputBorder ??
                        OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    widget.borderColor ?? hexColor('#E6EBF0')),
                            borderRadius:
                                BorderRadius.circular(widget.radius ?? 8.r)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: widget.borderColor ?? Colors.transparent),
                        borderRadius:
                            BorderRadius.circular(widget.radius ?? 8.r)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius:
                            BorderRadius.circular(widget.radius ?? 8.r)),
                    errorText: widget.errorText,
                    errorStyle: widget.showErrorText!
                        ? null
                        : const TextStyle(fontSize: 0),
                    contentPadding: widget.contentPadding ??
                        EdgeInsets.symmetric(vertical: 13.h, horizontal: 17.w),
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 40.h, minWidth: 40.w),
                    prefixIcon: widget.prefixIcon,
                    suffixIconConstraints: widget.suffixConstraint ??
                        BoxConstraints(
                            minHeight: (widget.suffixFunc != null) ? 40.h : 0,
                            minWidth: (widget.suffixFunc != null) ? 60.w : 0),
                    suffixIcon: widget.suffixIcon ??
                        setPasswordIcon(
                            obscuredText: widget.obscure,
                            obscurePassword: widget.suffixFunc),
                  ),
                ),
              ),
              if (widget.suffixImage == null)
                const SizedBox()
              else
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(5.r),
                    onTap: widget.suffixFunc,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
                      decoration: BoxDecoration(
                          color: const Color(0xFFB9B9B9).withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(5.r)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            widget.suffixImage!,
                            // color: BrandColors.primary,
                            width: 6.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }

  Widget? setPasswordIcon(
      {required bool? obscuredText, required VoidCallback? obscurePassword}) {
    if (widget.suffixFunc != null) {
      return GestureDetector(
        onTap: () => obscurePassword!(),
        child: Icon(
          obscuredText! ? Icons.visibility_off : Icons.visibility,
          size: 20.h,
        ),
      );
    } else {
      return null;
    }
  }

  List<TextInputFormatter>? getFormertter() {
    if (widget.type == TextFieldType.amount) {
      return [
        FilteringTextInputFormatter.allow(RegExp('[0-9.0]')),
        ThousandsSeparatorInputFormatter(),
        // LengthLimitingTextInputFormatter(7),
      ];
    } else if (widget.type == TextFieldType.bvn) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11)
      ];
    } else if (widget.type == TextFieldType.accountNo) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10)
      ];
    } else if (widget.type == TextFieldType.phone) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        // LengthLimitingTextInputFormatter(11)
        LengthLimitingTextInputFormatter(11)
      ];
    } else if (widget.type == TextFieldType.officePhone) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11)
        // LengthLimitingTextInputFormatter(14)
      ];
    } else if (widget.type == TextFieldType.name) {
      return [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z-]'))];
    } else if (widget.type == TextFieldType.pin) {
      return [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4)
      ];
    } else if (widget.type == TextFieldType.nin) {
      return [LengthLimitingTextInputFormatter(11)];
    }
    return widget.inputFormatters;
  }
}
