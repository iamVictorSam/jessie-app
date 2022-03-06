class OnBoarding {
  final String title, desc;
  final String image;

  OnBoarding({
    required this.title,
    required this.desc,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to\n Jessie Pay',
    desc: 'Manage & Trade all  Digital Assets at the snap of a finger.',
    image: 'assets/Bit2.png',
  ),
  OnBoarding(
    title: 'Secure & Easy to Use Crypto wallet',
    desc: 'Buy, Sell, Send, Receive and Store Crypto like Never before',
    image: 'assets/ON1.png',
  ),
  OnBoarding(
    desc: 'Buy and sell Giftcards from different countries around the world',
    title: 'Trade Giftcards',
    image: 'assets/ON3.png',
  ),
  OnBoarding(
    title: 'Create Virtual Master&\nVisa Cards',
    desc: 'Create and manage virtual card for your spending',
    image: 'assets/atm.PNG',
  ),
  OnBoarding(
    title: 'Perfect Money Deals',
    desc: 'Get the best perfect money deals\nwith Jessie.',
    image: 'assets/pm.png',
  ),
  OnBoarding(
    title: 'Do more with Jessie',
    desc: 'With Jessiepay, excess airtime is no longer a problem',
    image: 'assets/ON6.png',
  ),
];
