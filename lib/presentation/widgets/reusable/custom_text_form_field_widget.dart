part of '../widgets_part.dart';

class CustomTextFormField extends StatefulWidget {
  final String label, iconImgPath, hint;
  final TextEditingController textController;
  final bool passwordMode;
  final TextInputType keyboardType;
  const CustomTextFormField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.iconImgPath,
      required this.textController,
      this.passwordMode = false,
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.label,
        style: AppTheme.primary.copyWith(
          fontSize: 16.sp,
          fontWeight: AppTheme.medium,
        ),
      ),
      SizedBox(
        height: 12.h,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.lightestBackground),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.iconImgPath,
                width: 17.w,
                height: 12.h,
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: TextFormField(
                  keyboardType: widget.passwordMode
                      ? TextInputType.visiblePassword
                      : widget.keyboardType,
                  style: AppTheme.primary,
                  decoration: InputDecoration(
                    hintText: widget.hint,
                    hintStyle: AppTheme.secondary,
                    isCollapsed: true,
                    suffixIcon: widget.passwordMode
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                obsecureText = !obsecureText;
                              });
                            },
                            child: Icon(
                              obsecureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColor.secondaryText,
                              size: 16,
                            ),
                          )
                        : null,
                  ),
                  controller: widget.textController,
                  obscureText: widget.passwordMode ? obsecureText : false,
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
