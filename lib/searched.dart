import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 20,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    const Text(
                      'Search Food',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 45, // Adjust the width as needed
                        height: 45, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 187, 62),
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/profile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Spice Food',
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 4.0,
                              color: Colors.white), // White color outline
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 4.0,
                              color: Colors.white), // White color outline
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .white), // White color outline when focused
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 18.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width:
                          8), // Add some space between the TextField and the Icon
                  Container(
                    width: 45, // Adjust the width as needed
                    height: 45, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 187, 62),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: SizedBox(
                          height: 35,
                          width: 30,
                          child: Image.asset(
                            'assets/images/filter.png',
                            fit: BoxFit.contain,
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Found\n80 results",
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/sandwich.png",
                                      name: "Oni Sandwich",
                                      description: "Spicy chicken sandwich",
                                      calories: 69,
                                      price: 6.75),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/pasta.png",
                                      name: "Egg Pasta",
                                      description: "Spicy chicken pasta",
                                      calories: 28,
                                      price: 9.22),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/sandwich.png",
                                      name: "Oni Sandwich",
                                      description: "Spicy chicken sandwich",
                                      calories: 90,
                                      price: 6.78),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/sandwich.png",
                                      name: "Oni Sandwich",
                                      description: "Spicy chicken sandwich",
                                      calories: 65,
                                      price: 6.72),
                                ],
                              ),
                            ),
                            const SizedBox(
                                width:
                                    16), // Add horizontal space between columns
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/noodels.png",
                                      name: "Dan Noodles",
                                      description: "Spicy fruti mixed",
                                      calories: 120,
                                      price: 8.86),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/dimsum.png",
                                      name: "Chicken DimSum",
                                      description: "Spicy chicken DimSum",
                                      calories: 68,
                                      price: 6.99),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/noodels.png",
                                      name: "Dan Noodles",
                                      description: "Spicy fruti mixed",
                                      calories: 120,
                                      price: 8.86),
                                  const SizedBox(height: 60),
                                  buildFoodCard(context,
                                      imageUrl: "assets/images/dimsum.png",
                                      name: "Chicken DimSum",
                                      description: "Spicy chicken DimSum",
                                      calories: 68,
                                      price: 6.99),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildFoodCard(
  BuildContext context, {
  required String imageUrl,
  required String name,
  required String description,
  required int calories,
  required double price,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(206, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(131, 180, 168, 168).withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(0, -40),
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 0), // space for the image
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(height: 8),
                Text(
                  '🔥 $calories Calories',
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '\$ ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      '$price',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
