part of '../pages_part.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Chat Page",
        style: AppTheme.primary,
      )),
    );
  }
}
