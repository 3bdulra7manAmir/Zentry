abstract class AppRoutes
{
  AppRoutes._();

  // APP Splash
  static const kSplash = '/Splash';
  // APP Settings 
  static const kAppSettings = '/AppForm';

  ///[App_AUTH]
  
  // APP Login (Auth Tabs) 
  static const kAuthTabs = '/Auth';

  // APP Forget Password
  static const kForgetPassword = '/ForgetPasswordPhone';
  // APP Reset Password 
  static const kResetPassword = '/ResetPassword';
  // APP Verification Code 
  static const kVerification = '/VerificationCode';

  ///[App_Notifications]
  // APP Notifications 
  static const kNotifications = '/Notifications';
  // APP Notifications Details 
  static const kNotificationsSearch = '/SearchNotifications';

  ///[App_Search]
  // APP Search 
  static const kSearch = '/Search';
  // APP Search Results 
  static const kSearchResults = '/SearchResults';

  ///[APP_Home]
  //App Home 
  static const kHome = '/Home';
  static const kTest = '/Test';
}
