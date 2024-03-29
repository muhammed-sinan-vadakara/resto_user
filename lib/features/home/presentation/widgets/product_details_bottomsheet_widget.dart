import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:resto_user/core/constants/home_page/home_constants.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:resto_user/features/cart/presentation/bloc/cart_state.dart';
import 'package:resto_user/features/home/domain/entity/product_entity/product_entity.dart';
import 'package:resto_user/features/home/presentation/widgets/add_cart_button_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/addons_view_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/radio_button_widget.dart';
import 'package:resto_user/features/home/presentation/widgets/text_widget.dart';
import 'package:resto_user/features/profile/presentation/widgets/sized_box_16.dart';

class ProductDetailsBottomSheetWidget extends HookWidget {
  const ProductDetailsBottomSheetWidget({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final ProductEntity entity;

  @override
  Widget build(BuildContext context) {
    final counter = useState(1);
    final selectedProductType = useState(entity.types.first.id);
    final constants = GetIt.I.get<HomeConstants>();

    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.colors.secondary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(context.spaces.space_250),
                        topRight: Radius.circular(context.spaces.space_250),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.spaces.space_200,
                              vertical: context.spaces.space_100,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: context.colors.secondary,
                                boxShadow: [context.boxShadow.primary],
                                borderRadius: BorderRadius.circular(
                                    context.spaces.space_100),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(
                                  context.spaces.space_150,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(entity.name,
                                        style: context.typography.h700),
                                    SizedBox(height: context.spaces.space_200),
                                    Container(
                                      height: context.spaces.space_500 * 5,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(entity.imagePath),
                                          fit: BoxFit.cover,
                                        ),
                                        color: context.colors.textInverse,
                                        borderRadius: BorderRadius.circular(
                                            context.spaces.space_100),
                                      ),
                                    ),
                                    const SizedBox16(),
                                    const SizedBox16(),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('data'),
                                        Text('data'),
                                        Text('data'),
                                      ],
                                    ),
                                    const SizedBox16(),
                                    Text(
                                      textAlign: TextAlign.justify,
                                      entity.description,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // TypesViewWidget(entity: entity),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.spaces.space_200,
                              vertical: context.spaces.space_100,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: context.colors.secondary,
                                boxShadow: [context.boxShadow.primary],
                                borderRadius: BorderRadius.circular(
                                  context.spaces.space_100,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.all(context.spaces.space_150),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      constants.txtType,
                                      style: context.typography.h700,
                                    ),
                                    const Divider(),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: entity.types.length,
                                      itemBuilder: (context, index) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextWidget(
                                                text: entity.types[index].name),
                                            Row(
                                              children: [
                                                TextWidget(
                                                    text: entity
                                                        .types[index].price),
                                                SizedBox(
                                                  width:
                                                      context.spaces.space_200,
                                                ),
                                                RadioButtonWidget(
                                                  groupValue:
                                                      selectedProductType.value,
                                                  value: entity.types[index].id,
                                                  isChecked: selectedProductType
                                                          .value ==
                                                      entity.types[index].id,
                                                  onChanged: (value) {
                                                    selectedProductType.value =
                                                        value!;
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          AddonsViewWidget(entity: entity),
                        ],
                      ),
                    ),
                  ),
                ),
                AddCartButtonWidget(
                  value: counter.value.toString(),
                  increment: () => counter.value++,
                  decrement: () {
                    if (counter.value == 1) {
                      counter.value = 1;
                    } else {
                      counter.value--;
                    }
                  },
                  onPressed: () {
                    context.read<CartBloc>().add(
                          AddCartevent(
                              productId: entity.id,
                              quantity: counter.value,
                              type: selectedProductType.value),
                        );
                    context.pop();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
