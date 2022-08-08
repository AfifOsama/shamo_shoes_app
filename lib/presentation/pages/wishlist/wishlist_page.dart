part of '../pages_part.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Wishlist Page",
        style: AppTheme.primary,
      )),
    );
  }
}
