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

    Widget _categories() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: AppTheme.defaultMargin,
            ),
            CategoryWidget(
              categoryName: "All Shoes",
              onPressed: () {},
              isActive: true,
            ),
            CategoryWidget(
              categoryName: "Running",
              onPressed: () {},
            ),
            CategoryWidget(
              categoryName: "Training",
              onPressed: () {},
            ),
            CategoryWidget(
              categoryName: "Basketball",
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    Widget _popularProductsTitle() {
      return Padding(
        padding: EdgeInsets.only(left: AppTheme.defaultMargin, bottom: 14.h),
        child: Text(
          "Popular Products",
          style: AppTheme.primary.copyWith(
            fontSize: 22.sp,
            fontWeight: AppTheme.semiBold,
          ),
        ),
      );
    }

    Widget _popularProducts() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: AppTheme.defaultMargin,
            ),
            PopularProductCardWidget(
                categoryName: "Hiking",
                productName: "Court Vision 2.0",
                imgUrl: "assets/images/img_product.png",
                price: "\$ 58,76"),
            PopularProductCardWidget(
                categoryName: "Hiking",
                productName: "Court Vision 2.0",
                imgUrl: "assets/images/img_product.png",
                price: "\$ 58,76"),
            PopularProductCardWidget(
                categoryName: "Hiking",
                productName: "Court Vision 2.0",
                imgUrl: "assets/images/img_product.png",
                price: "\$ 58,76"),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _header(),
          _categories(),
          _popularProductsTitle(),
          _popularProducts(),
        ],
      ),
    );
  }
}
