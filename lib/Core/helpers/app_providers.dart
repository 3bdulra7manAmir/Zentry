import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/color_system/controller/theme_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/initial_tabbar_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/countries_icon_update_provider.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/language_icon_update_provider.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/theme_mode_text_provide.dart';
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
import '../../features/follow_business/domain/entity/business.dart';
import '../../features/follow_business/presentation/controllers/businesses_controller.dart';
import '../../features/home/domain/entity/post_entity.dart';
import '../../features/home/domain/entity/products_items_entity.dart';
import '../../features/home/domain/entity/story_entity.dart';
import '../../features/home/presentation/controllers/posts_controllers/post_fetch/posts_provider.dart';
import '../../features/home/presentation/controllers/products_items_controllers/products_items_provider.dart';
import '../../features/home/presentation/controllers/stories_controllers/stories_items_provider.dart';
import '../../features/join_groups/presentation/controllers/join_groups_items_provider.dart';
import '../../features/moeny_from_interests/data/model/interest_category.dart';
import '../../features/moeny_from_interests/presentation/controllers/interests_providers.dart';
import '../../features/notifications/domain/entity/notification_entity.dart';
import '../../features/notifications/presentation/controllers/notifications_providers/notifications_items_provider.dart';
import '../../features/search/domain/entities/search_category.dart';
import '../../features/search/domain/entities/search_result.dart';
import '../../features/search/presentation/controllers/search_providers/search_providers.dart';
import '../../features/search/presentation/controllers/search_result_providers/search_result_providers.dart';
import '../services/localization/controller/localization_controller.dart';


class AppProvidersProvider
{
  final WidgetRef ref;
  final BuildContext context;
  AppProvidersProvider(this.ref, this.context);

  // 🌍 Localization & Theme
  LocalizationController get localeController => ref.read(localizationControllerProvider.notifier); // new name here: localeController
  Locale get currentLocale => ref.watch(localizationControllerProvider); // new name here: currentLocale

  ThemeController get themeController => ref.read(themeControllerProvider.notifier); // new name here: themeController
  ThemeMode get currentThemeMode => ref.watch(themeControllerProvider); // new name here: currentThemeMode
  String get themeLabel => getSelectedThemeLabel(ref, context); // new name here: currentThemeLabel

  // 🌐 App Settings - Language & Country
  String get languageLabel => getSelectedLanguageLabel(ref, context); // new name here: currentLanguageLabel
  String get languageFlag => getSelectedLanguageImage(ref); // new name here: currentLanguageFlag

  String get countryLabel => getSelectedCountryName(ref, context); // new name here: selectedCountryLabel
  String get countryFlag => getSelectedCountryImage(ref, context); // new name here: selectedCountryFlag

  // 👤 Auth - TabBar & Sign Up Switchers
  void get tabIndexLogin => ref.read(tabIndexProvider.notifier).setIndex(0); // new name here: switchToLoginTab
  void get tabIndexRegister => ref.read(tabIndexProvider.notifier).setIndex(1); // new name here: switchToRegisterTab
  void get invitationCodeField => ref.read(invitationCodeEnabler.notifier).state = true; // new name here: enableInvitationCodeField

  void get signUpPhoneSwitcher => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.phone); // new name here: selectPhoneSignUp
  void get signUpFullNameSwitcher => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.fullname); // new name here: selectFullNameSignUp
  void get emailSignUp => ref.read(signUpTypeProvider.notifier).toggleSignUp(SignUpType.email); // new name here: selectEmailSignUp

  // 🔒 Auth - Obscure Passwords
  bool get obscureText => ref.watch(obscurePasswordProvider); // new name here: isLoginPasswordObscured
  bool get obscureText2 => ref.watch(obscurePasswordProvider2); // new name here: isRegisterPasswordObscured
  bool get obscureText3 => ref.watch(obscurePasswordProvider3); // new name here: isConfirmPasswordObscured

  bool get obscureTextState => ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state; // new name here: toggleLoginPassword
  bool get obscureTextState2 => ref.read(obscurePasswordProvider2.notifier).state = !ref.read(obscurePasswordProvider2.notifier).state; // new name here: toggleRegisterPassword
  bool get obscureTextState3 => ref.read(obscurePasswordProvider3.notifier).state = !ref.read(obscurePasswordProvider3.notifier).state; // new name here: toggleConfirmPassword

  // ✅ UI State
  bool get isChecked => ref.watch(checkboxValueProvider); // new name here: isRememberMeChecked

  bool get isLoginMethodEmail => ref.watch(loginMethodSwitcherProvider); // new name here: isLoginWithEmail
  bool get currentLoginMethod => ref.read(loginMethodSwitcherProvider); // new name here: currentLoginToggleValue
  void get currentLoginMethodNotifier => ref.read(loginMethodSwitcherProvider.notifier).state = !currentLoginMethod; // new name here: toggleLoginMethod

  dynamic get currentForgetPasswordMethod => ref.read(forgetPasswordMethodSwitcherProvider); // new name here: forgetPasswordMethod
  dynamic get currentForgetPasswordMethodNotifier => ref.read(forgetPasswordMethodSwitcherProvider.notifier).state; // new name here: forgetPasswordNotifier

  // 📱 Auth Inputs
  int? get phoneNumberHolder => ref.watch(countryControllerProvider); // new name here: selectedPhoneCountryCode
  bool get isPhoneNumber => ref.watch(forgetPasswordMethodSwitcherProvider); // new name here: isForgetPasswordPhone
  String get otpProvider => ref.watch(otpInputProvider); // new name here: otpCode

  int get selectedTabIndex => ref.watch(tabIndexProvider); // new name here: activeAuthTabIndex
  int get secondsLeft => ref.watch(resendCountdownProvider(context)); // new name here: resendOtpCountdown

  // 🗨️ Post Comments
  List<String> get tempComments => ref.watch(tempCommentsProvider); // new name here: tempPostComments

  // 🧠 Interests
  AsyncValue<List<InterestCategory>> get categoriesAsyncValue => ref.watch(interestCategoriesProvider); // new name here: allInterestCategories
  AsyncValue<List<InterestCategory>> get selectedCategoriesAsync => ref.watch(selectedCategoriesProvider); // new name here: selectedInterestCategories

  // 📊 Entities
  AsyncValue<List<Business>> get businessesAsyncValue => ref.watch(businessesProvider); // new name here: followedBusinesses
  AsyncValue<List<PostEntity>> get postsAsync => ref.watch(postsProvider); // new name here: homePosts
  AsyncValue<List<ProductsItemsEntity>> get productsAsyncValue => ref.watch(productsItemsProvider); // new name here: homeProducts
  AsyncValue<List<StoryEntity>> get storiesAsyncValue => ref.watch(storiesItemsProvider); // new name here: homeStories
  AsyncValue<dynamic> get joinGroupsAsyncValue => ref.watch(joinGroupsItemsProvider); // new name here: joinGroupItems
  AsyncValue<List<InterestCategory>> get selectedCategories => ref.watch(selectedCategoriesProvider); // new name here: selectedInterestCategories (duplicate—can merge or rename)

  // 🔔 Notifications
  AsyncValue<List<NotificationEntity>> get notificationsAsyncValue => ref.watch(notificationsItemsProvider); // new name here: allNotifications

  // 🔎 Search
  List<SearchCategory> get localResults => ref.watch(localSearchResultsProvider); // new name here: localSearchSuggestions
  AsyncValue<List<SearchResult>> get searchResults => ref.watch(searchResultsListProvider); // new name here: searchResultsList
  AsyncValue<List<SearchCategory>> get searchResultsCategory => ref.watch(searchResultsProvider); // new name here: searchCategories

  // 👤 Register Info
  SignUpType get signUpType => ref.watch(signUpTypeProvider); // new name here: currentSignUpType
  bool get invitationCode => ref.watch(invitationCodeEnabler); // new name here: isInvitationCodeEnabled

  DateTime get selectedDate => ref.watch(selectedDateProvider); // new name here: selectedBirthDate
  DateTime get currentDate => ref.watch(selectedDateProvider); // new name here: currentBirthDate
  String? get selectedGender => ref.watch(selectedGenderProvider); // new name here: selectedGender

  // ⬇️ Bottom Nav
  int get bottomNavIndex => ref.watch(bottomNavIndexProvider); // new name here: currentBottomNavIndex
}


String getAppText(BuildContext context, String Function(AppLocalizations) selector,)
{
  return selector(AppLocalizations.of(context));
}