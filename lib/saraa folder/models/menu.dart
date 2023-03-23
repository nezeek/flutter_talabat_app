import 'package:flutter/services.dart';

class Menu {
  final String title, image, description;
  final double price;

  Menu({required this.title, required this.image, required this.description, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Most Popular",
    items: [
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world", price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
    ],
  ),
  CategoryMenu(
    category: "Food",
    items: [
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
    ],
  ),
  CategoryMenu(
    category: "Drink",
    items: [
      Menu(title: "Cookieee", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
    ],
  ),
  CategoryMenu(
    category: "kaskati",
    items: [
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
      Menu(title: "Cookie", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "Hello world Hello world",price: 7.4),
    ],
  ),
];
