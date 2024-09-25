import 'package:flutter/material.dart';

import 'side.dart';
void main() {
  runApp(const MyApp());
}

//Class to define the title and description of recipies
class Recipie{
final String title_of_recipie;
final String recipie_description;
 final List<String> ingredients;
 final String instructions;

 Recipie({required this.title_of_recipie, required this.recipie_description, 
 required this.ingredients, required this.instructions});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CW2 Recipie Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CW2 List of Recipies'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final List<Recipie> recipes = [
    Recipie(title_of_recipie: "Spaghetti N Sauce",
    recipie_description: "A Normal bowl of nooddles and sauce"
    ,ingredients: ["Spaghetti","Tomato Sauce","Cheese","Butter"],
    instructions: "1: Break Spaghetti noddles and cook them in Seperate pot. 2: Put Tomato Sauce in pot and stir. 3: Wait for it to boil then add Cheese and Butter"),
    Recipie(title_of_recipie: "Chicken and Rice",
    recipie_description: "A bland creation of wheat and meat",
    ingredients:["Rice", "Chicken","Spice"],
    instructions: "1: Put rice to cook in Cooker. 2: Mix chicken and Spice. 3: Put chiken with rice when done." ),
    Recipie(title_of_recipie: "Grilled Cheese",
    recipie_description: "A simple small and good lunch.",
    ingredients:["Cheese", "Bread",],
    instructions: "1: toast bread on the frying pan. 2: put cheese on top of bread and let it sit"),
  ];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return ListTile(
            title: Text(recipe.title_of_recipie),
            subtitle: Text(recipe.recipie_description),
            onTap: () {
              // Navigate to the RecipeDetailsScreen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailsScreen(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}