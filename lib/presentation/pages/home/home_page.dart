part of '../pages_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> newArrival = [
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
      NewArrivalTileWidget(
        categoryName: "Football",
        productName: "Predator 20.3 Firm Ground",
        imgUrl: "assets/images/img_shoes.png",
        price: "\$68,47",
        onPressed: () {},
      ),
    ];

    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          HomeHeader(),
          Categories(),
          PopularProductTitle(),
          PopularProducts(),
          NewArrivalTitle(),
          ...newArrival,
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class PopularProductTitle extends StatelessWidget {
  const PopularProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            price: "\$ 58,76",
            onPressed: () {},
          ),
          PopularProductCardWidget(
            categoryName: "Hiking",
            productName: "Court Vision 2.0",
            imgUrl: "assets/images/img_product.png",
            price: "\$ 58,76",
            onPressed: () {},
          ),
          PopularProductCardWidget(
            categoryName: "Hiking",
            productName: "Court Vision 2.0",
            imgUrl: "assets/images/img_product.png",
            price: "\$ 58,76",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class NewArrivalTitle extends StatelessWidget {
  const NewArrivalTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppTheme.defaultMargin,
        right: AppTheme.defaultMargin,
        left: AppTheme.defaultMargin,
        bottom: 14.h,
      ),
      child: Text(
        "New Arrivals",
        style: AppTheme.primary.copyWith(
          fontSize: 22.sp,
          fontWeight: AppTheme.semiBold,
        ),
      ),
    );
  }
}
