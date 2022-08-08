part of 'widgets_part.dart';

class PopularProductCardWidget extends StatelessWidget {
  final String categoryName;
  final String productName;
  final String imgUrl;
  final String price;
  const PopularProductCardWidget(
      {Key? key,
      required this.categoryName,
      required this.productName,
      required this.imgUrl,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215.w,
      height: 278.h,
      margin: EdgeInsets.only(right: 28.w),
      decoration: BoxDecoration(
        color: AppColor.productContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 28.h,
          ),
          Image.asset(
            imgUrl,
            height: 120.h,
            width: 215.w,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              categoryName,
              style: AppTheme.secondary.copyWith(fontSize: 12.sp),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              productName,
              style: AppTheme.blackText
                  .copyWith(fontSize: 18.sp, fontWeight: AppTheme.semiBold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              price,
              style: AppTheme.price
                  .copyWith(fontSize: 14.sp, fontWeight: AppTheme.medium),
            ),
          ),
        ],
      ),
    );
  }
}
