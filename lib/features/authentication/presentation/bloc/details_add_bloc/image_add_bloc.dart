import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Cubit<XFile?> {
  ImagePickerBloc() : super(null);

  void setImage(XFile? image) {
    emit(image);
  }
}
