import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/category_bloc/category_bloc_state.dart';
import 'package:resto_user/features/home/presentation/bloc/offer_bloc/offer_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/offer_bloc/offer_bloc_state.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:resto_user/features/home/presentation/bloc/product_bloc/product_bloc_state.dart';
import 'package:resto_user/features/home/presentation/widgets/appbar_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/carousel_slider_loading_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/carousel_slider_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/category_listview_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/category_loading_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/product_griddview_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/product_loading_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/search_field_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/title_widget.dart';
import 'package:resto_user/features/profile/presentation/provider/theme/theme_bloc.dart';

class HomePage extends HookWidget {
  static const routePath = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final theme = AppTheme.of(context);
    final constants = GetIt.I.get<HomeConstants>();

    useEffect(() {
      Future.delayed(Duration.zero, () {
        context.read<ThemeBloc>().add(InitialThemeEvent());
        context.read<CategoryBloc>().add(GetCategoriesEvent());
        context.read<OfferBloc>().add(GetOfferesEvent());
        context.read<ProductBloc>().add(
              GetProductEvent(
                context.read<CategoryBloc>().state.selectedCategory,
              ),
            );
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: theme.colors.secondary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(theme.spaces.space_700),
        child: Padding(
          padding: EdgeInsets.only(right: theme.spaces.space_150),
          child: const HomeAppBarWidget(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: theme.spaces.space_300),
          child: Column(
            children: [
              SizedBox(
                height: theme.spaces.space_400,
              ),
              SearchFieldWidget(searchController: searchController),
              SizedBox(
                height: theme.spaces.space_400,
              ),
              BlocBuilder<OfferBloc, OfferBlocState>(builder: (context, state) {
                if (state.offers == null) {
                  return const CarouselSliderLoadingWidget();
                }
                return CarouselSliderWidget(
                  entity: state.offers!,
                );
              }),
              SizedBox(
                height: theme.spaces.space_400,
              ),
              TitleWidget(
                title: constants.txtCategory,
              ),
              SizedBox(
                height: theme.spaces.space_250,
              ),
              SizedBox(
                height: theme.spaces.space_100 * 10,
                child: BlocBuilder<CategoryBloc, CategoryBlocState>(
                    builder: (context, state) {
                  if (state.categories == null) {
                    return const LoadingCategoryWidget();
                  } else {
                    return CategoryListViewWidget(entity: state.categories!);
                  }
                }),
              ),
              SizedBox(
                height: theme.spaces.space_250,
              ),
              TitleWidget(
                title: constants.txtItems,
              ),
              SizedBox(
                height: theme.spaces.space_250,
              ),
              BlocBuilder<ProductBloc, ProductBlocState>(
                  builder: (context, state) {
                if (state.products == null) {
                  return const LoadingProductWidget();
                }
                return ProductGridViewWidget(
                  entity: state.products!,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
