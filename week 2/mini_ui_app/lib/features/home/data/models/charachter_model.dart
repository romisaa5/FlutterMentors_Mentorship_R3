class CharachterModel {
  final String imageUrl;
  final String charachterName;
  final String anime;

  CharachterModel({
    required this.imageUrl,
    required this.charachterName,
    required this.anime,
  });
  static List<CharachterModel> charachters = [
    CharachterModel(
      imageUrl: 'assets/images/charachter_1.png',
      charachterName: 'Gon Freecss',
      anime: 'Hunter x Hunter',
    ),
    CharachterModel(
      imageUrl: 'assets/images/charachter_2.png',
      charachterName: 'Naruto Uzumaki',
      anime: 'Naruto',
    ),
    CharachterModel(
      imageUrl: 'assets/images/charachter_3.jpg',
      charachterName: 'Luffy',
      anime: 'One Piece',
    ),
      CharachterModel(
      imageUrl: 'assets/images/charachter_4.png',
      charachterName: 'Naruto Uzumaki',
      anime: 'Naruto',
    ),
    CharachterModel(
      imageUrl: 'assets/images/charachter_3.jpg',
      charachterName: 'Luffy',
      anime: 'One Piece',
    ),
  ];
}
