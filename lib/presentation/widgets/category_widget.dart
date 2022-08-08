part of 'widgets_part.dart';

class CategoryWidget extends StatelessWidget {
  final bool isActive;
  final String categoryName;
  final Function() onPressed;
  const CategoryWidget(
      {Key? key,
      this.isActive = false,
      required this.categoryName,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 16.w, bottom: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 12.2, vertical: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? AppColor.primary : AppColor.transparent,
          border: isActive ? null : Border.all(color: AppColor.subtitleText),
        ),
        child: Text(
          categoryName,
          style: isActive
              ? AppTheme.primary
                  .copyWith(fontSize: 12, fontWeight: AppTheme.medium)
              : AppTheme.subtitle
                  .copyWith(fontSize: 12, fontWeight: AppTheme.medium),
        ),
      ),
    );
  }
}
