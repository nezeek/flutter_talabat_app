import 'package:flutter/material.dart';
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
      Menu(title: "Curly Fries", image: "https://th.bing.com/th/id/OIP.bO2_Qdxj4d4ENlGuCbVNRgHaE7?w=261&h=180&c=7&r=0&o=5&pid=1.7", description: " ",price: 3.500),
      Menu(title: "Margherita pizza", image: "https://th.bing.com/th/id/OIP.8jZsScsCyLaXkVWldiDB1wHaHa?pid=ImgDet&w=640&h=640&rs=1", description: "mozzarela,orango and tomato",price: 7.000),
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
    category: "Pizza",
    items: [
      Menu(title: "Mexican pizza", image: "https://th.bing.com/th/id/OIP.ucBJllTYWmFXlTfWFrbTWAHaE8?pid=ImgDet&w=1024&h=683&rs=1", description: "beef,peppers,olives,jalapeno",price: 10.500),
      Menu(title: "Vegetable pizza", image: "https://th.bing.com/th/id/OIP.KHA18N-jzT5UihW78RxnPAHaKX?pid=ImgDet&rs=1", description: "zucchini,mixed peppers",price: 8.500),
      Menu(title: "Margherita pizza", image: "https://th.bing.com/th/id/OIP.8jZsScsCyLaXkVWldiDB1wHaHa?pid=ImgDet&w=640&h=640&rs=1", description: "cheese,orango and tomato",price: 7.000),
      Menu(title: "Meat United Pizza", image: "https://patch.com/img/cdn20/users/22871539/20190116/032128/styles/raw/public/processed_images/chicago_overhead_2-1547669723-7086.jpg", description: "Mozarella,orango,tomato",price:7.500),
      Menu(title: "Mixed Pizza", image: "https://th.bing.com/th/id/OIP.ZvIUdAOahjAdaX7G8J3E4wHaEw?pid=ImgDet&w=1536&h=986&rs=1", description: "cheese,orango,tomato",price: 6.500),
      Menu(title: "Tuna pizza", image: "https://th.bing.com/th/id/OIP.j82zQpAhlymbK1CClx8QRQHaHa?pid=ImgDet&rs=1", description: "Tuna,onions,black olive",price: 10.000),
    ],
  ),
   CategoryMenu(
    category: "Cold Drinks",
    items: [
     Menu(title: "Water",image: "https://th.bing.com/th/id/OIP.9jWjb1Iyyet7bNcnns5LxwAAAA?pid=ImgDet&w=250&h=250&rs=1", description: " ", price: 1.00),
      Menu(title: "Pepsi", image: "https://theluxrestaurant.com/wp-content/uploads/2021/08/PEPSI.gif", description: " ",price: 1.000),
      Menu(title: "Mirinda Orange", image: "https://th.bing.com/th/id/R.3cde7858d5bc0864c36d916576e9d41d?rik=yzjJo72zFJAnmw&pid=ImgRaw&r=0", description: " ",price: 1.000),
      Menu(title: "7 Up", image: "https://th.bing.com/th/id/R.3e78b998aa7a7e9e844a96a60e5c3853?rik=Gj2aClPlhpyUuw&pid=ImgRaw&r=0", description: " ",price: 1.000),
      
    ],
  ),
];
