part of 'pages_part.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> header = [
      Text(
        'Login',
        style: AppTheme.primary
            .copyWith(fontSize: 24.sp, fontWeight: AppTheme.semiBold),
      ),
      SizedBox(height: 2.h),
      Text(
        'Sign In to Countinue',
        style: AppTheme.subtitle,
      ),
      SizedBox(
        height: 70.h,
      ),
    ];

    List<Widget> content = [
      CustomTextFormField(
          label: "Email Address",
          hint: "Your email address",
          iconImgPath: "assets/images/icon_email.png",
          keyboardType: TextInputType.emailAddress,
          textController: _emailController),
      SizedBox(
        height: 20.h,
      ),
      CustomTextFormField(
          label: "Password",
          hint: "Your password",
          iconImgPath: "assets/images/icon_password.png",
          textController: _passwordController,
          passwordMode: true),
      SizedBox(
        height: 30.h,
      ),
      CustomTextButtonWidget(label: "Sign in", onPressed: () {}, height: 50.h),
      const Spacer(),
    ];

    Widget _footer() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            style: AppTheme.subtitle.copyWith(fontSize: 12.sp),
          ),
          GestureDetector(
            onTap: () => Get.toNamed('/sign-up'),
            child: Text(
              "Sign up",
              style: AppTheme.hightlightedText,
            ),
          )
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.darkerBackground,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(AppTheme.defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...header,
              ...content,
              _footer(),
            ],
          ),
        ),
      ),
    );
  }
}
