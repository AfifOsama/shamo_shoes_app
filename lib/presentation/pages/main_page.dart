part of 'pages_part.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget floatingActionButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          "assets/images/icon_cart.png",
          width: 20,
        ),
        backgroundColor: AppColor.secondary,
      );
    }

    Widget customBottomNavigation() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: BottomAppBar(
          color: AppColor.navBarBackground,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: AppColor.navBarBackground,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 8.h),
                  child: Image.asset(
                    'assets/images/icon_home.png',
                    width: 21.w,
                    color: _currentIndex == 0
                        ? AppColor.primary
                        : AppColor.iconNavBar,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 8.h, right: 4.w),
                  child: Image.asset(
                    'assets/images/icon_chat.png',
                    width: 20.w,
                    color: _currentIndex == 1
                        ? AppColor.primary
                        : AppColor.iconNavBar,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 8.h, left: 4.w),
                  child: Image.asset(
                    'assets/images/icon_favorite.png',
                    width: 20.w,
                    color: _currentIndex == 2
                        ? AppColor.primary
                        : AppColor.iconNavBar,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 8.h),
                  child: Image.asset(
                    'assets/images/icon_profile.png',
                    width: 18.w,
                    color: _currentIndex == 3
                        ? AppColor.primary
                        : AppColor.iconNavBar,
                  ),
                ),
                label: "",
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (_currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishlistPage();
        case 3:
          return ProfilePage();

        default:
          return HomePage();
      }
    }

    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: AppColor.darkerBackground,
        bottomNavigationBar: customBottomNavigation(),
        body: body(),
      ),
    );
  }
}
