part of '../pages_part.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSize appBar() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: AppBar(
            elevation: 0,
            backgroundColor: AppColor.darkerBackground,
            centerTitle: false,
            title: Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Container(
                      width: 44.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:
                          Image.asset("assets/images/img_default_profile.png"),
                    ),
                    Container(
                      width: 16.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.online,
                        border:
                            Border.all(color: AppColor.blackText, width: 2.w),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shoe store",
                      style: AppTheme.primary.copyWith(
                          fontWeight: AppTheme.medium, fontSize: 14.sp),
                    ),
                    Text(
                      "Online",
                      style: AppTheme.secondary.copyWith(
                          fontWeight: AppTheme.light, fontSize: 14.sp),
                    )
                  ],
                ),
              ],
            )),
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(color: AppColor.lighterBackground),
    );
  }
}
