class AnimeModel {
  final String imageUrl;
  final String title;
  final String kind;
  final num rating;
  AnimeModel({
    required this.rating,
    required this.imageUrl,
    required this.title,
    required this.kind,
  });
  static List<AnimeModel> animes = [
    AnimeModel(
      rating: 5,
      imageUrl: 'assets/images/poster_2.png',
      title: 'Detective Conan',
      kind: 'Mystery',
    ),
    AnimeModel(
      rating: 4.9,
      imageUrl: 'assets/images/poster_3.png',
      title: 'Hunter x Hunter',
      kind: 'Adventure',
    ),
    AnimeModel(
      rating: 4.8,
      imageUrl: 'assets/images/poster_4.png',
      title: 'Hunter x Hunter',
      kind: 'Adventure',
    ),
    AnimeModel(
      rating: 4.8,
      imageUrl: 'assets/images/poster_5.png',
      title: 'Hunter x Hunter',
      kind: 'Adventure',
    ),
    AnimeModel(
      rating: 4.8,
      imageUrl: 'assets/images/poster_1.png',
      title: 'Hunter x Hunter',
      kind: 'Adventure',
    ),
  ];
}
