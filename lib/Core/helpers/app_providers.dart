import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/features/follow_business/presentation/controllers/businesses_items_controller.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/controller/theme_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/initial_tabbar_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/countries_icon_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/languages_icon_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/theme_mode_text_controller.dart';
import '../../features/auth/forget_password/presentation/controllers/switcher_controller.dart';
import '../../features/auth/login_and_register/login/presentation/controllers/checkbox_controller.dart';
import '../../features/auth/login_and_register/login/presentation/controllers/obsecure_text_controller.dart';
import '../../features/auth/login_and_register/login/presentation/controllers/switcher_controller.dart';
import '../../features/auth/login_and_register/register/presentation/controllers/phone_number_controllers/invite_code_enabler.dart';
import '../../features/auth/login_and_register/register/presentation/controllers/phone_number_controllers/switcher_controller.dart';
import '../../features/auth/login_and_register/register/presentation/controllers/fullname_controllers/gender_provider.dart';
import '../../features/auth/login_and_register/register/presentation/controllers/phone_number_controllers/obsecure_text_controller.dart';
import '../../features/auth/login_and_register/register/presentation/controllers/fullname_controllers/selected_date_provider.dart';
import '../../features/auth/verification_code/presentation/controllers/count_down_controller.dart';
import '../../features/auth/verification_code/presentation/controllers/otp_input_controller.dart';
import '../../features/home/presentation/controllers/posts_controllers/post_comments/temp_comments_controller.dart';
import '../widgets/bottom_nav_bar/controller/bottom_nav_index_provider.dart';
import '../../features/follow_business/domain/entity/business_entity.dart';
import '../../features/home/domain/entity/post_entity.dart';
import '../../features/home/domain/entity/products_items_entity.dart';
import '../../features/home/domain/entity/story_entity.dart';
import '../../features/home/presentation/controllers/posts_controllers/post_fetch/posts_controller.dart';
import '../../features/home/presentation/controllers/products_items_controllers/products_items_controller.dart';
import '../../features/home/presentation/controllers/stories_controllers/stories_items_controller.dart';
import '../../features/join_groups/presentation/controllers/join_groups_items_controller.dart';
import '../../features/moeny_from_interests/data/model/interest_category.dart';
import '../../features/moeny_from_interests/presentation/controllers/interests_controller.dart';
import '../../features/notifications/domain/entity/notification_entity.dart';
import '../../features/notifications/presentation/controllers/notifications_providers/notifications_items_controller.dart';
import '../../features/search/domain/entities/search_category.dart';
import '../../features/search/domain/entities/search_result.dart';
import '../../features/search/presentation/controllers/search_providers/search_controller.dart';
import '../../features/search/presentation/controllers/search_result_providers/search_result_controller.dart';
import '../services/localization/controller/localization_controller.dart';


class AppProvidersProvider
{
  final WidgetRef ref;
  final BuildContext context;
  AppProvidersProvider(this.ref, this.context);

  // 🌍 Localization & Theme
  LocalizationController get localeController => ref.read(localizationControllerProvider.notifier);
  Locale get currentLocale => ref.watch(localizationControllerProvider);

  ThemeController get themeController => ref.read(themeControllerProvider.notifier);
  ThemeMode get currentThemeMode => ref.watch(themeControllerProvider);
  String get currentThemeLabel => getSelectedThemeLabel(ref, context);
  
  bool isDarkMode(BuildContext context)
  {
    return currentThemeMode == ThemeMode.dark || (currentThemeMode == ThemeMode.system && MediaQuery.of(context).platformBrightness == Brightness.dark);
  }

  // 🌐 App Settings - Language & Country
  String get currentLanguageLabel => getSelectedLanguageLabel(ref, context);
  String get currentLanguageFlag => getSelectedLanguageImage(ref);

  String get selectedCountryLabel => getSelectedCountryName(ref, context);
  String get selectedCountryFlag => getSelectedCountryImage(ref, context);

  // 👤 Auth - TabBar & Sign Up Switchers
  void get switchToLoginTab => ref.read(tabIndexProvider.notifier).setIndex(0);
  void get switchToRegisterTab => ref.read(tabIndexProvider.notifier).setIndex(1);
  void get enableInvitationCodeField => ref.read(invitationCodeEnabler.notifier).state = true;

  void get selectPhoneSignUp => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.phone);
  void get selectFullNameSignUp => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.fullname);
  void get selectEmailSignUp => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.email);

  // 🔒 Auth - Obscure Passwords
  bool get isLoginPasswordObscured => ref.watch(obscurePasswordProvider);
  bool get isRegisterPasswordObscured => ref.watch(obscurePasswordProvider2);
  bool get isConfirmPasswordObscured => ref.watch(obscurePasswordProvider3);

  bool get toggleLoginPassword => ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
  bool get toggleRegisterPassword => ref.read(obscurePasswordProvider2.notifier).state = !ref.read(obscurePasswordProvider2.notifier).state;
  bool get toggleConfirmPassword => ref.read(obscurePasswordProvider3.notifier).state = !ref.read(obscurePasswordProvider3.notifier).state;

  // ✅ UI State
  bool get isRememberMeChecked => ref.watch(checkboxValueProvider);

  bool get isLoginWithEmail => ref.watch(loginMethodSwitcherProvider);
  bool get currentLoginToggleValue => ref.read(loginMethodSwitcherProvider);
  void get toggleLoginMethod => ref.read(loginMethodSwitcherProvider.notifier).state = !currentLoginToggleValue;

  dynamic get forgetPasswordMethod => ref.read(forgetPasswordMethodSwitcherProvider);
  dynamic get forgetPasswordNotifier => ref.read(forgetPasswordMethodSwitcherProvider.notifier).state;

  // 📱 Auth Inputs
  int? get selectedPhoneCountryCode => ref.watch(countryControllerProvider);
  bool get isForgetPasswordPhone => ref.watch(forgetPasswordMethodSwitcherProvider);
  String get otpCode => ref.watch(otpInputProvider);

  int get activeAuthTabIndex => ref.watch(tabIndexProvider);
  int get resendOtpCountdown => ref.watch(resendCountdownProvider(context));

  // 🗨️ Post Comments
  List<String> get tempPostComments => ref.watch(tempCommentsProvider);

  // 🧠 Interests
  AsyncValue<List<InterestCategory>> get allInterestCategories => ref.watch(interestCategoriesProvider);
  AsyncValue<List<InterestCategory>> get selectedInterestCategories => ref.watch(selectedCategoriesProvider);

  // 📊 Entities
  AsyncValue<List<BusinessEntity>> get followedBusinesses => ref.watch(businessItemsProvider);
  AsyncValue<List<PostEntity>> get homePosts => ref.watch(postsProvider);
  AsyncValue<List<ProductsItemsEntity>> get homeProducts => ref.watch(productsItemsProvider);
  AsyncValue<List<StoryEntity>> get homeStories => ref.watch(storiesItemsProvider);
  AsyncValue<dynamic> get joinGroupItems => ref.watch(joinGroupsItemsProvider);

  // 🔔 Notifications
  AsyncValue<List<NotificationEntity>> get allNotifications => ref.watch(notificationsItemsProvider);

  // 🔎 Search
  List<SearchCategory> get localSearchSuggestions => ref.watch(localSearchResultsProvider);
  AsyncValue<List<SearchResult>> get searchResultsList => ref.watch(searchResultsListProvider);
  AsyncValue<List<SearchCategory>> get searchCategories => ref.watch(searchResultsProvider);

  // 👤 Register Info
  SignUpType get currentSignUpType => ref.watch(signUpTypeProvider);
  bool get isInvitationCodeEnabled => ref.watch(invitationCodeEnabler);

  DateTime get selectedBirthDate => ref.watch(selectedDateProvider);
  DateTime get currentBirthDate => ref.watch(selectedDateProvider);
  String? get selectedGender => ref.watch(selectedGenderProvider);

  // ⬇️ Bottom Nav
  int get currentBottomNavIndex => ref.watch(bottomNavIndexProvider);
}


String getAppText(BuildContext context, String Function(AppLocalizations) selector,)
{
  return selector(AppLocalizations.of(context));
}