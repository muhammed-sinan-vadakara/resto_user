import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resto_user/core/themes/app_theme.dart';
import 'package:resto_user/core/utils/image_picker_utils.dart';
import 'package:resto_user/features/authentication/presentation/bloc/details_add_bloc/image_add_bloc.dart';
import 'package:resto_user/features/authentication/presentation/widgets/add_image_widget.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImagePickerBloc>(
      create: (_) => ImagePickerBloc(),
      child: BlocBuilder<ImagePickerBloc, XFile?>(
        builder: (context, imagePathPicked) {
          Widget? imageToShow;

          if (imagePathPicked != null) {
            imageToShow = Image.network(
              imagePathPicked.path,
              fit: BoxFit.cover,
            );
          } else if (imagePathPicked != null) {
            imageToShow = Image.file(
              File(imagePathPicked.path),
              fit: BoxFit.cover,
            );
          }
          final constants = (context);
          return InkWell(
            onTap: () async {
              final imageSelected =
                  await ImagePickerUtils.showDialogueForImagePicker(context);
              context.read<ImagePickerBloc>().setImage(imageSelected);
            },
            child: Container(
              height: constants.spaces.space_500 * 6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(constants.spaces.space_100),
                border: Border.all(
                  color: constants.colors.textSubtle,
                  width: constants.spaces.space_25,
                ),
              ),
              child: imageToShow ??
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Center(
                        child: AddImageWidget(),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
            ),
          );
        },
      ),
    );
  }
}










// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:resto_user/core/themes/app_theme.dart';
// import 'package:resto_user/core/utils/image_picker_utils.dart';
// import 'package:resto_user/features/authentication/presentation/widgets/add_image_widget.dart';

// final imageProvider = StateProvider<XFile?>((ref) {
//   return null;
// });

// class ImagePickerWidget extends StatelessWidget {
//   const ImagePickerWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     /// Path of the image picked
//     ///
//     final imagePathPicked = imageProvider;
//     // ref.watch(imageProvider)?.path;

//     /// Image to show if the image is already picked
//     Widget? imageToShow;

//     if (imagePathPicked != null && imagePathPicked.startsWith('http')) {
//       imageToShow = Image.network(
//         imagePathPicked,
//         fit: BoxFit.cover,
//       );
//     } else if (imagePathPicked != null) {
//       imageToShow = Image.file(
//         File(imagePathPicked),
//         fit: BoxFit.cover,
//       );
//     }

//     return InkWell(
//       onTap: () async {
//         final imageSelected =
//             await ImagePickerUtils.showDialogueForImagePicker(context);
//         imageProvider.notifier.state = imageSelected;
//       },
//       child: Container(
//         height: AppTheme.of(context).spaces.space_500 * 6,
//         width: MediaQuery.sizeOf(context).width,
//         decoration: BoxDecoration(
//             borderRadius:
//                 BorderRadius.circular(AppTheme.of(context).spaces.space_100),
//             border: Border.all(
//                 color: AppTheme.of(context).colors.textSubtle,
//                 width: AppTheme.of(context).spaces.space_25)),
//         child: imageToShow ??
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Center(
//                   child: AddImageWidget(),
//                 ),
//                 SizedBox(
//                   height: AppTheme.of(context).spaces.space_100,
//                 ),
//               ],
//             ),
//       ),
//     );
//   }
// }
