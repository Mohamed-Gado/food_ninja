import 'package:flutter/material.dart';
import 'package:food_ninja/screens/auth/add_profile_photo_screen.dart';
import 'package:food_ninja/screens/auth/forget_password_screen.dart';
import 'package:food_ninja/screens/auth/login_screen.dart';
import 'package:food_ninja/screens/auth/password_reset_successfully.dart';
import 'package:food_ninja/screens/auth/payment_method_screen.dart';
import 'package:food_ninja/screens/auth/personal_info_screen.dart';
import 'package:food_ninja/screens/auth/profile_ready_screen.dart';
import 'package:food_ninja/screens/auth/reset_password_screen.dart';
import 'package:food_ninja/screens/auth/set_location_screen.dart';
import 'package:food_ninja/screens/auth/signup_screen.dart';
import 'package:food_ninja/screens/auth/verification_code_screen.dart';
import 'package:food_ninja/screens/intro/first_intro_screen.dart';
import 'package:food_ninja/screens/intro/second_intro_screen.dart';
import 'package:food_ninja/screens/navigation/cart/choose_payment_screen.dart';
import 'package:food_ninja/screens/navigation/cart/confirm_order_screen.dart';
import 'package:food_ninja/screens/navigation/cart/shipping_screen.dart';
import 'package:food_ninja/screens/navigation/chat/chat_details_screen.dart';
import 'package:food_ninja/screens/navigation/chat/voice_call_screen.dart';
import 'package:food_ninja/screens/navigation/home/menu_item_details_screen.dart';
import 'package:food_ninja/screens/navigation/home/notifications/notifications_screen.dart';
import 'package:food_ninja/screens/navigation/home/restaurant_details_screen.dart';
import 'package:food_ninja/screens/navigation/home/voucher_promo_screen.dart';
import 'package:food_ninja/screens/navigation/navigation_screen.dart';
import 'package:food_ninja/screens/rate_screens/rate_driver_screen.dart';
import 'package:food_ninja/screens/rate_screens/rate_food_screen.dart';
import 'package:food_ninja/screens/rate_screens/rate_restaurant_screen.dart';
import 'package:food_ninja/theme/custom_themes.dart';

import 'screens/navigation/cart/set_location_map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Food Ninja',
      debugShowCheckedModeBanner: false,
      darkTheme: CustomThemes.appTheme(true),
      theme: CustomThemes.appTheme(false),
      home: const NavigationScreen(),
      routes: {
        FirstIntroScreen.routeName: (context) => const FirstIntroScreen(),
        SecondIntroScreen.routeName: (context) => const SecondIntroScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        PersonalInfoScreen.routeName: (context) => const PersonalInfoScreen(),
        PaymentMethodScreen.routeName: (context) => const PaymentMethodScreen(),
        AddProfilePhotoScreen.routeName: (context) =>
            const AddProfilePhotoScreen(),
        SetLocationScreen.routeName: (context) => const SetLocationScreen(),
        ProfileReadyScreen.routeName: (context) => const ProfileReadyScreen(),
        VerificationCodeScreen.routeName: (context) =>
            const VerificationCodeScreen(),
        ForgetPasswordScreen.routeName: (context) =>
            const ForgetPasswordScreen(),
        ResetPasswordScreen.routeName: (context) => const ResetPasswordScreen(),
        PasswordResetSuccessfully.routeName: (context) =>
            const PasswordResetSuccessfully(),
        NavigationScreen.routeName: (context) => const NavigationScreen(),
        NotificationsScreen.routeName: (context) => const NotificationsScreen(),
        ChatDetailsScreen.routeName: (context) => const ChatDetailsScreen(),
        VoiceCallScreen.routeName: (context) => const VoiceCallScreen(),
        RateDriverScreen.routeName: (context) => const RateDriverScreen(),
        RateFoodScreen.routeName: (context) => const RateFoodScreen(),
        RateRestaurantScreen.routeName: (context) =>
            const RateRestaurantScreen(),
        VoucherPromoScreen.routeName: (context) => const VoucherPromoScreen(),
        ConfirmOrderScreen.routeName: (context) => const ConfirmOrderScreen(),
        ShippingScreen.routeName: (context) => const ShippingScreen(),
        ChoosePaymentScreen.routeName: (context) => const ChoosePaymentScreen(),
        RestaurantDetailsScreen.routeName: (context) =>
            const RestaurantDetailsScreen(),
        SetLocationMapScreen.routeName: (context) =>
            const SetLocationMapScreen(),
        MenuItemDetailsScreen.routeName: (context) =>
            const MenuItemDetailsScreen(),
      },
    );
  }
}
