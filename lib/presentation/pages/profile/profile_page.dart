part of '../pages_part.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Profile Page",
        style: AppTheme.primary,
      )),
    );
  }
}