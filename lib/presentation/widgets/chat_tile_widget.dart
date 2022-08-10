part of 'widgets_part.dart';

class ChatTileWidget extends StatelessWidget {
  final String displayUrl;
  final String name;
  final String message;
  final String time;
  final Function() onPressed;
  const ChatTileWidget(
      {Key? key,
      required this.displayUrl,
      required this.name,
      required this.message,
      required this.time,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.only(
            left: AppTheme.defaultMargin,
            right: AppTheme.defaultMargin,
            bottom: 16.h,
            top: 16.h),
        child: Row(
          children: [
            Container(
              width: 54.w,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                displayUrl,
                width: 54.w,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTheme.primary.copyWith(fontSize: 15.sp),
                  ),
                  Text(
                    message,
                    style: AppTheme.secondary.copyWith(
                      fontSize: 14.sp,
                      fontWeight: AppTheme.light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: AppTheme.defaultMargin,
            ),
            Text(
              time,
              style: AppTheme.secondary.copyWith(
                fontSize: 10.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
