sealed class DetailsEvent {}

class DetailsAddEvent extends DetailsEvent {
  DetailsAddEvent({
    required this.name,
    required this.imagePath,
  });
  final String name;
  final String imagePath;
}
