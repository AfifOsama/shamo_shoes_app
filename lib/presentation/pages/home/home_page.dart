part of '../pages_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: EdgeInsets.all(AppTheme.defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Osama",
                  style: AppTheme.primary.copyWith(
                    fontSize: 24,
                    fontWeight: AppTheme.semiBold,
                  ),
                ),
                Text(
                  "@osamaladen",
                  style: AppTheme.subtitle.copyWith(fontSize: 16),
                ),
              ],
            ),
            Container(
              width: 54,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset("assets/images/img_default_profile.png"),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: ListView(
        children: [
          _header(),
        ],
      ),
    );
  }
}
