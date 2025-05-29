import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/features/home/presentation/widgets/products_scroll_view/products_item.dart';
import '../../../../../config/l10n/generated/app_localizations.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/helpers/app_providers.dart';
import '../../../../../core/widgets/app_listview_builder.dart';

class ProductsItemList extends ConsumerWidget
{
  const ProductsItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final provider = AppProvidersProvider(ref, context);
    return provider.productsAsyncValue.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(child: Text('${AppLocalizations.of(context).error}: $error')),
      data: (products) => AppListviewBuilder(
        padding: AppPadding.startOnly12,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ProductsItem(product: products[index],),
        separatorBuilder: (context, index) => AppSizes.size16.horizontalSpace,
        itemCount: products.length,
      ),
    );
  }
}