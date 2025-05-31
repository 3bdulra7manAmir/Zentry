import 'package:flutter/material.dart';
import '../../../../config/l10n/generated/app_localizations.dart';
import '../../../constants/app_images.dart';

class NavItem
{
  final String activeIcon;
  final String inactiveIcon;
  final String label;

  NavItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.label,
  });
}

List<NavItem> getNavItems(BuildContext context)
{
  return
  [
    NavItem(
      activeIcon: AppAssets.iconsPNG.navHome,
      inactiveIcon: AppAssets.iconsPNG.navHome,
      label: AppLocalizations.of(context).home,
    ),
    NavItem(
      activeIcon: AppAssets.iconsPNG.navCategory,
      inactiveIcon: AppAssets.iconsPNG.navCategory,
      label: AppLocalizations.of(context).category,
    ),
    NavItem(
      activeIcon: AppAssets.iconsPNG.navProfile,
      inactiveIcon: AppAssets.iconsPNG.navProfile,
      label: AppLocalizations.of(context).profile,
    ),
    NavItem(
      activeIcon: AppAssets.iconsPNG.navMenu,
      inactiveIcon: AppAssets.iconsPNG.navMenu,
      label: AppLocalizations.of(context).menu,
    ),
  ];
}
