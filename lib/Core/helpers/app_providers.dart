import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../config/l10n/generated/app_localizations.dart';
import '../../config/themes/color_system/controller/theme_controller.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/countries_icon_update_provider.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/language_icon_update_provider.dart';
import '../../features/auth/app_settings/presentation/controllers/settings_controllers/theme_mode_text_provide.dart';
import '../../features/auth/login/presentation/controllers/checkbox_controller.dart';
import '../../features/auth/login/presentation/controllers/obsecure_text_controller.dart';
import '../../features/auth/register/presentation/controllers/phone_number_controllers/switcher_controller.dart';
import '../../features/auth/register/presentation/controllers/fullname_controllers/gender_provider.dart';
import '../../features/auth/register/presentation/controllers/phone_number_controllers/obsecure_text_controller.dart';
import '../../features/auth/register/presentation/controllers/fullname_controllers/selected_date_provider.dart';
import '../../features/auth/verification_code/presentation/controllers/otp_input_controller.dart';
import '../widgets/bottom_nav_bar/controller/bottom_nav_index_provider.dart';
import '../../features/follow_business/domain/entity/business.dart';
import '../../features/follow_business/presentation/controllers/businesses_controller.dart';
import '../../features/home/domain/entity/post_entity.dart';
import '../../features/home/domain/entity/products_items_entity.dart';
import '../../features/home/domain/entity/story_entity.dart';
import '../../features/home/presentation/controllers/posts_providers/posts_provider.dart';
import '../../features/home/presentation/controllers/products_items_providers/products_items_provider.dart';
import '../../features/home/presentation/controllers/stories_provider/stories_items_provider.dart';
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

  LocalizationController get localeState => ref.read(localizationControllerProvider.notifier);
  Locale get locale => ref.watch(localizationControllerProvider);

  ThemeController get themeController => ref.read(themeControllerProvider.notifier);
  ThemeMode get themeMode => ref.watch(themeControllerProvider);
  String get themeLabel => getSelectedThemeLabel(ref, context);

  String get languageLabel => getSelectedLanguageLabel(ref, context);
  String get languageFlag => getSelectedLanguageImage(ref);

  String get countryLabel => getSelectedCountryName(ref, context);
  String get countryFlag => getSelectedCountryImage(ref, context);

  bool get obscureText => ref.watch(obscurePasswordProvider);
  bool get obscureText2 => ref.watch(obscurePasswordProvider2);
  bool get obscureText3 => ref.watch(obscurePasswordProvider3);
  bool get obscureTextState => ref.read(obscurePasswordProvider.notifier).state = !ref.read(obscurePasswordProvider.notifier).state;
  bool get obscureTextState2 => ref.read(obscurePasswordProvider2.notifier).state = !ref.read(obscurePasswordProvider2.notifier).state;
  bool get obscureTextState3 => ref.read(obscurePasswordProvider3.notifier).state = !ref.read(obscurePasswordProvider3.notifier).state;

  bool get isChecked => ref.watch(checkboxValueProvider);
  int? get phoneNumberHolder => ref.watch(countryControllerProvider);

  SignUpType get signUpType => ref.watch(signUpTypeProvider);

  String get otpProvider => ref.watch(otpInputProvider);

  int get bottomNavIndex => ref.watch(bottomNavIndexProvider);

  DateTime get selectedDate => ref.watch(selectedDateProvider);
  DateTime get currentDate => ref.watch(selectedDateProvider);
  String? get selectedGender => ref.watch(selectedGenderProvider);

  AsyncValue<List<Business>> get businessesAsyncValue => ref.watch(businessesProvider);
  AsyncValue<List<PostEntity>> get postsAsync => ref.watch(postsProvider);
  AsyncValue<List<ProductsItemsEntity>> get productsAsyncValue => ref.watch(productsItemsProvider);
  AsyncValue<List<StoryEntity>> get storiesAsyncValue => ref.watch(storiesItemsProvider);
  AsyncValue<dynamic> get joinGroupsAsyncValue => ref.watch(joinGroupsItemsProvider);
  AsyncValue<List<InterestCategory>> get selectedCategories => ref.watch(selectedCategoriesProvider);
  AsyncValue<List<NotificationEntity>> get notificationsAsyncValue => ref.watch(notificationsItemsProvider);
  AsyncValue<List<SearchResult>> get searchResults => ref.watch(searchResultsListProvider);
  AsyncValue<List<SearchCategory>> get searchResultsCategory => ref.watch(searchResultsProvider);
}

String getAppText(BuildContext context, String Function(AppLocalizations) selector,)
{
  return selector(AppLocalizations.of(context));
}