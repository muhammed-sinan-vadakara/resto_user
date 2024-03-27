import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:resto_user/core/constants/app_assets/app_asset_constants.dart';
import 'package:resto_user/features/map/presentation/bloc/map_bloc.dart';
import 'package:resto_user/features/map/presentation/bloc/map_bloc_state.dart';

class RawAutoWidget extends HookWidget {
  const RawAutoWidget({
    super.key,
  });

  static const List<String> _options = <String>[
    'shamil',
    'ejaz',
    'fasil',
    'sanju',
  ];

  @override
  Widget build(BuildContext context) {
    final assets = GetIt.I.get<AppAssetConstants>();

    return RawAutocomplete(
      optionsBuilder: (textEditingValue) {
        return _options.where((element) {
          return element.contains(textEditingValue.text.toLowerCase());
        });
      },
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController textEditingController,
        FocusNode focusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: TextField(
              focusNode: focusNode,
              onSubmitted: (String value) {
                onFieldSubmitted();
              },
              controller: textEditingController,
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                context.read<MapBloc>().add(GetLocationEvent(value));
              },
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    child: SvgPicture.asset(
                      assets.icSearch,
                    ),
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              )),
        );
      },
      optionsViewBuilder:
          (context, AutocompleteOnSelected<String> onSelected, options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            elevation: 4.0,
            child: SizedBox(
              height: 250,
              child: BlocBuilder<MapBloc, GetLocationBlocState>(
                  builder: (context, state) {
                if (state.location == null) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: state.location!.length,
                  itemBuilder: (context, index) {
                    final String option = state.location![index].title;
                    return GestureDetector(
                      onTap: () {
                        onSelected(option);
                      },
                      child: ListTile(
                        title: Text(option),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
