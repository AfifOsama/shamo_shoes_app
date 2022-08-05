part of 'pages_part.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> header = [
      Text(
        'Sign Up',
        style: AppTheme.primary
            .copyWith(fontSize: 24.sp, fontWeight: AppTheme.semiBold),
      ),
      SizedBox(height: 2.h),
      Text(
        'Register and happy shoping',
        style: AppTheme.subtitle,
      ),
      SizedBox(
        height: 70.h,
      ),
    ];

    List<Widget> content = [
      CustomTextFormField(
          label: "Full Name",
          hint: "Your full name",
          iconImgPath: "assets/images/icon_fullname.png",
          textController: _fullNameController),
      SizedBox(
        height: 20.h,
      ),
      CustomTextFormField(
          label: "User Name",
          hint: "Your username",
          iconImgPath: "assets/images/icon_username.png",
          textController: _userNameController),
      SizedBox(
        height: 20.h,
      ),
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
        height: 20.h,
      ),
      CustomTextFormField(
          label: "Confirm Password",
          hint: "Repeat your password",
          iconImgPath: "assets/images/icon_password.png",
          textController: _confirmPasswordController,
          passwordMode: true),
      SizedBox(
        height: 20.h,
      ),
      CustomTextButtonWidget(label: "Sign Up", onPressed: () {}, height: 50.h),
      SizedBox(
        height: 70.h,
      ),
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
            onTap: () => Get.back(),
            child: Text(
              "Sign in",
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
        child: SingleChildScrollView(
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
      ),
    );
  }
}
