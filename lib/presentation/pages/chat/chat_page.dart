part of '../pages_part.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
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

    Widget _content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.lighterBackground,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/img_headset.png"),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        _header(),
        _content(),
      ],
    );
  }
}
