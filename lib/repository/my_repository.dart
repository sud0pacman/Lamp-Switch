final lamps = [
  LampModel(
    offImage: "assets/images/lamp1_off.png",
    onImage: "assets/images/lamp1_on.png",
    title: "Szilvassy Ceramic Disc Surface Mount New!",
    price: "2,800.00",
  ),
  LampModel(
    offImage: "assets/images/lamp2_off.png",
    onImage: "assets/images/lamp2_on.png",
    title: "Up Down Sconce, Limited Edition",
    price: '375.00',
  ),
  LampModel(
    offImage: "assets/images/lamp3_off.png",
    onImage: "assets/images/lamp3_on.png",
    title: "Flora Chandelier, 5 Stem",
    price: '12,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp4_off.png",
    onImage: "assets/images/lamp4_on.png",
    title: 'Saga Pendant, Duo',
    price: '5,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp5_off.png",
    onImage: "assets/images/lamp5_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp6_off.png",
    onImage: "assets/images/lamp6_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp7_off.png",
    onImage: "assets/images/lamp7_on.png",
    title: 'Seneca Table Lamp',
    price: '3,000.00',
  ),
  LampModel(
    offImage: "assets/images/lamp8_off.png",
    onImage: "assets/images/lamp8_on.png",
    title: 'Dome Table Lamp',
    price: '2,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp9_off.png",
    onImage: "assets/images/lamp9_on.png",
    title: 'Ripple Sconce',
    price: '465.00',
  ),
  LampModel(
    offImage: "assets/images/lamp10_off.png",
    onImage: "assets/images/lamp10_on.png",
    title: 'Arundel Up Light',
    price: '850.00',
  ),
  LampModel(
    offImage: "assets/images/lamp11_off.png",
    onImage: "assets/images/lamp11_on.png",
    title: 'Alien Pendant',
    price: '1,300.00',
  ),
  LampModel(
    offImage: "assets/images/lamp12_off.png",
    onImage: "assets/images/lamp12_on.png",
    title: 'Chromatic Glass Up Down Sconce, Hardwire',
    price: '800.00',
  ),
  LampModel(
    offImage: "assets/images/lamp13_off.png",
    onImage: "assets/images/lamp13_on.png",
    title: 'Calla Sconce, Medium',
    price: '5,575.00',
  ),
  LampModel(
    offImage: "assets/images/lamp14_off.png",
    onImage: "assets/images/lamp14_on.png",
    title: 'Saga Pendant, Solo',
    price: '5,000.00',
  ),
  LampModel(
    offImage: "assets/images/lamp15_off.png",
    onImage: "assets/images/lamp15_on.png",
    title: 'Alien Table Lamp',
    price: '1,600.00',
  ),
  LampModel(
    offImage: "assets/images/lamp16_off.png",
    onImage: "assets/images/lamp16_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp17_off.png",
    onImage: "assets/images/lamp17_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp18_off.png",
    onImage: "assets/images/lamp18_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp19_off.png",
    onImage: "assets/images/lamp19_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp20_off.png",
    onImage: "assets/images/lamp20_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp21_off.png",
    onImage: "assets/images/lamp21_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp22_off.png",
    onImage: "assets/images/lamp22_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp23_off.png",
    onImage: "assets/images/lamp23_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp24_off.png",
    onImage: "assets/images/lamp24_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
  LampModel(
    offImage: "assets/images/lamp25_off.png",
    onImage: "assets/images/lamp25_on.png",
    title: 'Vera Sconce',
    price: '1,500.00',
  ),
  LampModel(
    offImage: "assets/images/lamp26_off.png",
    onImage: "assets/images/lamp26_on.png",
    title: 'Calla Pendant, Large',
    price: '6,250.00',
  ),
];

class LampModel {
  final String offImage;
  final String onImage;
  bool isOn;
  final String title;
  final String price;

  LampModel({
    required this.offImage,
    required this.onImage,
    this.isOn = false,
    required this.title,
    required this.price,
  });
}
