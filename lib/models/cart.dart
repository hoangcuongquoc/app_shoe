import 'package:flutter/foundation.dart'; // Import ChangeNotifier
import 'package:app_ban_giay/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Satan Shoes',
      price: '2290',
      description: 'The “Satan Shoes” were a limited-edition release in March 2021, created by rapper Lil Nas X in collaboration with the art collective MSCHF. These custom sneakers were based on Nike Air Max 97s but were not officially affiliated with Nike',
      imagePath: 'lib/photo/merlin_186039729_cdb846bf-dc3f-49cf-8552-e3992140338b-videoSixteenByNineJumbo1600.jpg',
    ),
    Shoe(
      name: 'Air Force 1 x JD',
      price: '600',
      description: 'The Nike Air Force 1 “Para-Noise” is a collaborative sneaker between Nike and G-Dragon, the leader of South Korean music group Big Bang, under his fashion label PEACEMINUSONE. This series is renowned for its unique design elements that reflect G-Dragon’s artistic vision and personal style',
      imagePath: 'lib/photo/nike-af1-para-noise_dd3f2a729e0b4185a292c6431ff8814e.jpg',
    ),
    Shoe(
      name: 'Nike Mercurial',
      price: '90',
      description: 'The Nike Mercurial football boots are designed for players who prioritize speed, agility, and precision on the pitch. Favored by elite athletes like Cristiano Ronaldo and Kylian Mbappé, the Mercurial line combines cutting-edge technology with sleek design to enhance performance',
      imagePath: 'lib/photo/ong-nike-zoom-mercurial-superfly-9-academy-tf-dj5629-300-xanh-la-tim-1_cb77d15289ef430db6375b473b68750e_master.webp',
    ),
    Shoe(
      name: 'Air Force 1 x Supreme',
      price: '400',
      description: 'The Supreme x Nike Air Force 1 Low is a standout collaboration that merges the classic appeal of Nike’s Air Force 1 with Supreme’s minimalist streetwear aesthetic',
      imagePath: 'lib/photo/suprme.jpg',
    ),
    Shoe(
      name: 'Nike road racing',
      price: '400',
      description: 'Tightweight performance running shoes, optimized for speed and road races',
      imagePath: 'lib/photo/road racing .jpeg',
    ),
    Shoe(
      name: 'Nike Air Force 1 Low ’07 LX',
      price: '120',
      description: 'Classic low-top sneakers with premium materials and timeless street style',
      imagePath: 'lib/photo/air-force-1-07-lx-womens-shoes-58VkQV-2-1024x545.webp',
    ),
    Shoe(
      name: 'Nike Air Force 1 Shadow Sail',
      price: '130',
      description: 'Playful, layered design with a soft Sail colorway, adding a twist to the classic AF1 look.',
      imagePath: 'lib/photo/air-force-1-shadow-shoes-mN8Glx-1-1024x542.webp',
    ),
    Shoe(
      name: 'Nike Blazer',
      price: '100',
      description: 'Retro-inspired sneakers with a clean silhouette and vintage basketball vibes',
      imagePath: 'lib/photo/blazer-mid-77-vintage-shoes-dNWPTj-2-1024x640.webp',
    ),
    Shoe(
      name: 'Nike Dunk',
      price: '110',
      description: 'Iconic sneakers blending skateboarding heritage with bold, versatile street style.',
      imagePath: 'lib/photo/dunk-low-shoes-3wjGFP-1-1024x716.webp',
    ),
    Shoe(
      name: 'Nike Court',
      price: '75',
      description: 'Sleek and simple tennis-inspired sneakers, perfect for everyday casual wear.',
      imagePath: 'lib/photo/court-vision-low-next-nature-shoes-p3CnbT-1-1024x608.webp',
    ),
    Shoe(
      name: 'Nike Air Max 90',
      price: '130',
      description: 'Legendary sneakers with visible Air cushioning and bold, timeless design',
      imagePath: 'lib/photo/air-max-90-shoes-mnCmVT-1-1024x622.webp',
    ),
    Shoe(
      name: 'Nike Air Max 1',
      price: '140',
      description: 'The original Air Max icon featuring a classic design and visible Air unit for all-day comfort',
      imagePath: 'lib/photo/air-max-1-shoes-KcSx0w-2-1024x716.webp',
    ),
    Shoe(
      name: 'Nike Air Max 97',
      price: '170',
      description: 'Sleek, futuristic design with full-length visible Air cushioning for comfort and style.',
      imagePath: 'lib/photo/air-max-97-futura-shoes-r0gfkM-1-1024x657.webp',
    ),
    Shoe(
      name: 'Nike React',
      price: '120',
      description: 'High-performance running shoes with a responsive, cushioned sole for smooth, comfortable runs.',
      imagePath: 'lib/photo/react-phantom-run-flyknit-2-road-running-shoes-lMXdBX-1-1024x619.webp',
    ),
    Shoe(
      name: 'Nike Cortez OG',
      price: '120',
      description: 'Iconic retro sneakers with a classic design and timeless appeal, perfect for casual wear.',
      imagePath: 'lib/photo/classic-cortez-shoe-8p3Qjt-1-1024x657.webp',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners(); // Notify listeners to update the UI
  }
}