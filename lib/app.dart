import 'package:findme/screens/merchant_view.dart';
import 'package:findme/screens/user/user_add_contact.dart';
import 'package:findme/screens/user/user_contacts.dart';
import 'package:findme/screens/user/user_notifications.dart';
import 'package:findme/screens/user/user_statistics.dart';
import 'package:findme/screens/user/user_wallet.dart';
import 'package:flutter/material.dart';

import './screens/landing_page.dart';
import './screens/signup_user.dart';
import './screens/sign_in_user.dart';

import './screens/user/user_new_delivery.dart';
import './screens/user/user_dashboard.dart';
import './screens/user/user_order_history.dart';

// import './screens/merchant/merchant_dashboard.dart';
import './style.dart';

const LandingPageRoute = "/";
const SignInRoute = '/signin';
const SignupUserRoute = '/signup/user';

const UserDashboardRoute = '/user/dashboard';
const UserNewDeliveryRoute = '/user/new-delivery';
const UserOrderHistoryRoute = '/user/order-history';
const UserContactsRoute = '/user/contacts';
const UserAddContactsRoute = '/user/contacts/new';
const UserStatisticsRoute = '/user/statistics';
const UserWalletRoute = '/user/wallet';
const UserNotificationsRoute = '/user/notifications';
const UserMerchantViewRoute = 'user/merchant/view';

const MerchantsDashboardRoute = '/merchants/dashboard';
const MerchantDetailRoute = '/merchants/detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationStyle,
        textTheme: TextTheme(
          title: TitleTextStyle,
          headline: HeadlineTextStyle,
          body1: Body1TextStyle,
          body2: Body2TextStyle,
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;

      switch (settings.name) {
        case LandingPageRoute:
          screen = LandingPage();
          break;
        case SignupUserRoute:
          screen = SignupUser();
          break;
        case SignInRoute:
          screen = SignInUser();
          break;
        case UserDashboardRoute:
          screen = UserDashboard();
          break;
        case UserNewDeliveryRoute:
          screen = NewDelivery();
          break;
        case UserOrderHistoryRoute:
          screen = OrderHistory();
          break;
        case UserContactsRoute:
          screen = UserContacts();
          break;
        case UserAddContactsRoute:
          screen = AddContactScreen();
          break;
        case UserStatisticsRoute:
          screen = UserStatistics();
          break;
        case UserWalletRoute:
          screen = UserWallet();
          break;
        case UserNotificationsRoute:
          screen = UserNotifications();
          break;
        case UserMerchantViewRoute:
          screen = MerchantView();
          break;
        default:
          return null;
          break;
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
