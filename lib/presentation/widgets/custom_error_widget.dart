part of 'widgets_part.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorDetails;
  const CustomErrorWidget({Key? key, required this.errorDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColor.alert,
        child: Center(
          child: Text(
            errorDetails,
            style: AppTheme.primary,
          ),
        ),
      ),
    );
  }
}
