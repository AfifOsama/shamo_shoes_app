part of 'widgets_part.dart';

class NewArrivalTileWidget extends StatelessWidget {
  final String categoryName;
  final String productName;
  final String imgUrl;
  final String price;
  final Function() onPressed;
  const NewArrivalTileWidget(
      {Key? key,
      required this.categoryName,
      required this.productName,
      required this.imgUrl,
      required this.price,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppTheme.defaultMargin,
        bottom: AppTheme.defaultMargin,
        right: 20.w,
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imgUrl,
                width: 120.w,
                height: 120.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categoryName,
                    style: AppTheme.secondary.copyWith(fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.primary.copyWith(
                      fontSize: 16.sp,
                      fontWeight: AppTheme.semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    price,
                    style: AppTheme.price.copyWith(
                      fontWeight: AppTheme.semiBold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
