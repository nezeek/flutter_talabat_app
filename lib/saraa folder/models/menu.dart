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
    category: "Trending",
    items: [
      Menu(title: "Duble Cheese Burger", image: "https://www.desktopbackground.org/download/1280x1024/2010/06/04/28023_cheeseburger-hd-magnificent-wallpapers-free-hd-wallpapers-download_1920x1080_h.jpg", description: "2 black angus beef patty",price: 12.000),
     Menu(title: "Chiken Burger", image: "https://th.bing.com/th/id/OIP.1iga5uTndtz8Yro5x-PTZwHaFh?w=257&h=191&c=7&r=0&o=5&pid=1.7", description: "crispy chiken patty,green salad",price: 8.500),
      Menu(title: "Curly Fries", image: "https://th.bing.com/th/id/OIP.bO2_Qdxj4d4ENlGuCbVNRgHaE7?w=261&h=180&c=7&r=0&o=5&pid=1.7", description: " ",price: 3.500),
      Menu(title: "Margherita pizza", image: "https://th.bing.com/th/id/OIP.8jZsScsCyLaXkVWldiDB1wHaHa?pid=ImgDet&w=640&h=640&rs=1", description: "mozzarela cheese,orango and tomato",price: 7.000),
    ],
  ),
  CategoryMenu(
    category: "Wrap Sandwiches",
    items: [
      Menu(title: "Chicken Wrap Sandwich", image: "https://i.pinimg.com/736x/c0/7e/81/c07e81b2664c84d665de59212f7b1ce5.jpg", description: " ",price: 6.500),
      Menu(title: "Loaded Wrapper", image: "https://www.the-sun.com/wp-content/uploads/sites/6/2021/07/NINTCHDBPICT000667772876.jpg?w=1980", description: "crispy chiken cheese ",price: 7.500),
    ],
  ),
  CategoryMenu(
    category: "Burger",
    items: [
           Menu(title: "2 in 1 Cheese Burger",image: "https://th.bing.com/th/id/OIP.r88qg2oomrY6Ypgkx3pTYAHaFS?pid=ImgDet&w=700&h=500&rs=1", description: "Homemade burger bun", price: 9.500),
      Menu(title: "Duble Cheese Burger", image: "https://www.desktopbackground.org/download/1280x1024/2010/06/04/28023_cheeseburger-hd-magnificent-wallpapers-free-hd-wallpapers-download_1920x1080_h.jpg", description: "2 black angus beef patty",price: 12.000),
      Menu(title: "Chiken Burger", image: "https://th.bing.com/th/id/OIP.1iga5uTndtz8Yro5x-PTZwHaFh?w=257&h=191&c=7&r=0&o=5&pid=1.7", description: "crispy chiken patty,green salad",price: 8.500),
      Menu(title: "Farm Burger", image: "https://th.bing.com/th/id/OIP.v5vr2EAdreKvqJtnZs2HJwHaE5?w=261&h=180&c=7&r=0&o=5&pid=1.7", description: "grilled egg",price: 10.500),
      Menu(title: "Vegetable Burger", image: "https://th.bing.com/th/id/OIP.Aq5Uy558k9Y91bnWqilNyAAAAA?pid=ImgDet&w=435&h=435&rs=1", description: "vegeterian patty",price: 6.500),
    ],
  ),
  CategoryMenu(
    category: "Kids Meals",
    items: [
      Menu(title: "Kids Burger Meal", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "served with french friese",price:6.500),
      Menu(title: "Chicken Popcorn Meal", image: "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", description: "served french with drink",price: 6.500),
    ],
  ),
];
