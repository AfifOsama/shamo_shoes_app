part of '../pages_part.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatHeader(),
        const ListChat(),
      ],
    );
  }
}

class ChatHeader extends StatelessWidget {
  const ChatHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.darkerBackground,
      title: Text(
        "Message Support",
        style: AppTheme.primary
            .copyWith(fontSize: 18.sp, fontWeight: AppTheme.medium),
      ),
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}

class ListChat extends StatelessWidget {
  const ListChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return ChatTileWidget(
            displayUrl: "assets/images/img_store.png",
            name: "Shoe store",
            message: "Your product has been delivered!",
            time: "now",
            onPressed: () => Get.toNamed('/detail-chat'),
          );
        },
        separatorBuilder: ((context, index) => Divider(
              color: AppColor.subtitleText,
              height: 1,
              indent: 28,
              endIndent: 28,
            )),
        itemCount: 2);
  }
}

class EmptyChat extends StatelessWidget {
  const EmptyChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: AppColor.lighterBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/img_headset.png",
              width: 80.w,
            ),
            SizedBox(height: 20.h),
            Text(
              "Opss no message yet?",
              style: AppTheme.primary.copyWith(
                fontWeight: AppTheme.medium,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 12.h),
            Text("You have never done a chat?", style: AppTheme.secondary),
          ],
        ),
      ),
    );
  }
}
