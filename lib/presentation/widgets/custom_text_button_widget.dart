part of 'widgets_part.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final double height;
  final double width;
  const CustomTextButtonWidget(
      {Key? key,
      required this.label,
      this.onPressed,
      required this.height,
      this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: AppTheme.textButton,
        child: Text(
          label,
          style: AppTheme.primary.copyWith(
            fontWeight: AppTheme.medium,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
