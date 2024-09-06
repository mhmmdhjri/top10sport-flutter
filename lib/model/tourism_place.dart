class Sport {
  String name;
  String teams;
  String description;
  String creator;
  String imageAsset;
  List<String> imageUrls;

  Sport({
    required this.name,
    required this.teams,
    required this.description,
    required this.creator,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var sportList = [
  Sport(
    name: 'Football (Soccer)',
    teams: '12',
    description:
        'Football, also known as soccer, is a team sport played with a spherical ball between two teams of 11 players. It is the world\'s most popular sport, played by approximately 250 million players in over 200 countries and dependencies.',
    creator: 'unknwon',
    imageAsset:
        '/Users/mymac/Downloads/programming/flutter_projects/worldsport/images/goat.jpg',
    imageUrls: [
      'https://i.pinimg.com/474x/60/4e/4e/604e4e9e6acd2e2b1d6c97e62f055134.jpg',
      'https://i.pinimg.com/474x/57/7f/25/577f25ac479ba49083c98d81adfa226b.jpg',
      'https://i.pinimg.com/474x/c6/8b/1e/c68b1e585663f00711b95b9d0ec1dd3c.jpg',
      'https://t.ly/psOkY',
      'https://i.pinimg.com/474x/16/60/cc/1660cc28ca8d4ad306eac23feb4420d6.jpg',
      'https://i.pinimg.com/474x/4a/0c/e8/4a0ce8dbe522ec949baa3011c78198f5.jpg',
      'https://i.pinimg.com/474x/0c/8e/eb/0c8eebc7e641d79ba9aec297c8dd9d57.jpg'
    ],
  ),
  Sport(
    name: 'Basketball',
    teams: '5',
    description:
        'Basketball is a team sport in which two teams, most commonly of five players each, opposing one another on a rectangular court, compete with the primary objective of shooting a basketball through the defender\'s hoop.',
    creator: 'Dr. James Naismith',
    imageAsset: 'images/basket.png',
    imageUrls: [
      'https://i.pinimg.com/474x/28/c8/0d/28c80dcaf14375c50f7cdd21a1411814.jpg',
      'https://i.pinimg.com/474x/68/69/2a/68692a042602440560576bb241ac6a49.jpg',
      'https://i.pinimg.com/474x/6b/6a/ba/6b6aba011a50e37538272e68048f2a01.jpg',
        'https://i.pinimg.com/474x/7c/48/19/7c481977061c7f68bb5970dae91f1787.jpg',
        'https://i.pinimg.com/474x/a3/97/59/a397598be7c56eaa664602063302595e.jpg',
        'https://i.pinimg.com/474x/76/15/b6/7615b6b5ad8c5303898ab0ce0e6e0133.jpg',
    ],
  ),
  Sport(
    name: 'Cricket',
    teams: '11',
    description:
        'Cricket is a bat-and-ball game played between two teams of eleven players on a field at the center of which is a 22-yard pitch with a wicket at each end.',
    creator: 'unknown',
    imageAsset: 'images/cricket.png',
    imageUrls: [
      'https://i.pinimg.com/474x/1e/f2/6e/1ef26ee26a673ebea6036414bf2b1b0d.jpg',
      'https://i.pinimg.com/474x/8a/99/be/8a99be8e8703ab62d8037d6ffb42814e.jpg',
      'https://i.pinimg.com/474x/ae/ee/c7/aeeec7552b646bb470897ff3052641a0.jpg',
      'https://i.pinimg.com/originals/83/69/2c/83692c9c813aaea4ec414037f499db06.jpg'
    ],
  ),
  Sport(
    name: 'Tennis',
    teams: '2',
    description:
        'Tennis is a racket sport that can be played individually against a single opponent or between two teams of two players each. The sport is played on a rectangular court with a net running across the center.',
    creator: 'unknown',
    imageAsset: 'images/tennis.png',
    imageUrls: [
      'https://i.pinimg.com/474x/ca/e0/ef/cae0ef13cbb35d02fd41b3f0c2210af8.jpg',
      'https://i.pinimg.com/474x/f8/1d/9b/f81d9b184b8c4b71abb3d6db35617f1c.jpg',
      'https://i.pinimg.com/474x/51/f4/65/51f465e41dbadc549abdd64ba7ee166d.jpg',
      'https://i.pinimg.com/474x/9a/8a/5d/9a8a5d6763308d12d0501def35b9bbe0.jpg'
    ],
  ),
  Sport(
    name: 'Baseball',
    teams: '9',
    description:
        'Baseball is a bat-and-ball game played between two opposing teams who take turns batting and fielding. The game is played on a diamond-shaped field.',
    creator: 'Alexander Cartwright',
    imageAsset: 'images/baseball.png',
    imageUrls: [
      'https://i.pinimg.com/474x/5e/2b/ad/5e2bad54e3b3215c974dc8694bcb17ef.jpg',
      'https://i.pinimg.com/474x/c8/06/3b/c8063b79799676408b723f689ee95590.jpg',
      'https://i.pinimg.com/474x/0d/98/d3/0d98d32d1724cfa4867a7f20be9365f2.jpg',
      'https://i.pinimg.com/474x/2d/a2/b7/2da2b735db9003135a042a7e152a41dc.jpg'
    ],
  ),
  Sport(
    name: 'Rugby',
    teams: '15',
    description:
        'Rugby is a contact team sport that originated in England in the first half of the 19th century. One of the two codes of rugby football, it is based on running with the ball in hand.',
    creator: 'William Webb Ellis',
    imageAsset: 'images/rugby.png',
    imageUrls: [
      'https://i.pinimg.com/474x/93/dd/ce/93ddce5d5c985367ebad90290bae00ae.jpg',
      'https://i.pinimg.com/474x/19/7a/57/197a5717f62e11549b7501738c8db589.jpg',
      'https://i.pinimg.com/474x/83/b4/38/83b438119074a78f8e5225143da77199.jpg',
      'https://i.pinimg.com/474x/ef/cb/4c/efcb4c74cad4949c7628c16ff1d7c363.jpg'
    ],
  ),
  Sport(
    name: 'Golf',
    teams: '2',
    description:
        'Golf is a club-and-ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible.',
    creator: 'unknown',
    imageAsset: 'images/golf.png',
    imageUrls: [
      'https://i.pinimg.com/474x/c6/69/74/c669746dedb4da87927a31000989405e.jpg',
      'https://i.pinimg.com/474x/24/81/ff/2481ff9570b1630ed93efc0276c30d10.jpg',
      'https://i.pinimg.com/474x/f4/da/d6/f4dad6641fc027a094342647ff71cde7.jpg',
      'https://i.pinimg.com/474x/b3/12/3d/b3123dbc5c91c0ba967a74986744c493.jpg'
    ],
  ),
  Sport(
    name: 'American Football',
    teams: '11',
    description:
        'American football is a team sport played by two teams of eleven players on a rectangular field with goalposts at each end.',
    creator: 'Walter Camp',
    imageAsset: 'images/american-football.png',
    imageUrls: [
      'https://i.pinimg.com/474x/f1/46/9b/f1469b0cb210fd209d925743a487ed16.jpg',
      'https://i.pinimg.com/474x/43/19/8f/43198fe78904ef0e5b77a98747c6ae21.jpg',
      'https://i.pinimg.com/474x/54/ab/8a/54ab8a22e5e262cbf0c8a56fa1973cc1.jpg',
      'https://i.pinimg.com/474x/07/c0/66/07c0665693985cbb249713c2f2e48534.jpg'
    ],
  ),
  Sport(
    name: 'Hockey',
    teams: '6',
    description:
        'Hockey is a family of sports in which two teams play against each other by trying to maneuver a ball or a puck into the opponent\'s goal using a hockey stick.',
    creator: 'unknown',
    imageAsset: 'images/hockey.png',
    imageUrls: [
      'https://i.pinimg.com/474x/3e/e6/31/3ee631252c17dede1a4d290926d7c670.jpg',
      'https://i.pinimg.com/474x/19/cb/ac/19cbac4af6832713dc5baec1ede6a77f.jpg',
      'https://i.pinimg.com/474x/a0/b1/5d/a0b15d8e3c659664253fbbf5367f8bb7.jpg',
      'https://i.pinimg.com/474x/91/e0/ac/91e0acca1fa2a5e11e09c8f6fc1823d0.jpg'
    ],
  ),
  Sport(
    name: 'Volleyball',
    teams: '5',
    description:
        'Volleyball is a team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team\'s court under organized rules.',
    creator: 'William G. Morgan',
    imageAsset: 'images/volleyball.png',
    imageUrls: [
      'https://i.pinimg.com/474x/f0/22/e6/f022e6726debbcdf6034107628dac1d5.jpg',
      'https://i.pinimg.com/474x/ee/c4/65/eec465b9aab2fcdeaf7ab9dd5095156a.jpg',
      'https://i.pinimg.com/474x/12/70/b7/1270b7106761bd7a5441c04243e6c127.jpg',
      'https://i.pinimg.com/474x/05/4c/0e/054c0ef5fa022e21a355c76477be5df8.jpg'
    ],
  ),
];
